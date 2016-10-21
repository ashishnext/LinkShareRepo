package linkshare.person.topic

import com.User
import grails.plugin.springsecurity.annotation.Secured
import person.Person
import resource.LinkResource
import subscription.Subscription
import topic.Topic

@Secured(['ROLE_ADMIN', 'ROLE_USER'])
class TopicController {

    def springSecurityService
    def topicService

    def index() {}

    def showTopics() {
        User user = springSecurityService.currentUser
        Person person = Person.findByUser(user)

        render(view: "showTopics", model: [topicList: person.topics])
    }

    def createTopic() {
        User user = springSecurityService.currentUser
        Person person = Person.findByUser(user)
        Topic topic = new Topic(topicName: params.topicName, visibility: params.visibility, person: person)


        if (!Topic.findByTopicName(params.topicName)) {
            if (topic.validate()) {

                Subscription subscription = new Subscription(person: person, topic: topic)
                person.addToTopics(topic)
                person.addToSubscriptions(subscription)

                person.save(flush: true)
                println("topic saved")

                flash.message = "Topic created"
                render(view: "/person/checkTheme", model: [name: flash.message])
            } else {
                topic.errors.allErrors.each { err ->
                    println(err)
                }
                flash.message = "Invalid input"
                render(view: "/person/checkTheme", model: [name: flash.message])
            }
        } else {
            flash.message = "Topic already created before"
            render(view: "/person/checkTheme", model: [name: flash.message])
        }
    }

    def editTopic() {
        Topic topic = Topic.findById(params.name)
        println(topic.topicName)
        render(view: "editTopic", model: [topicObj: topic])
    }

    def updateTopic() {
        Topic topic = Topic.findById(params.id)
        println(topic.id)
        topic.topicName = params.topicName
        println(params.topicName)
        topic.visibility = params.visibility
        if (!Topic.findByTopicName(params.topicName)) {
            if (topic.validate()) {
                topic.save(flush: true)
                flash.update = "Topic updated succesfully"
                render(view: "/person/checkTheme", model: [name: flash.update])
            } else {
                topic.errors.allErrors.each { err ->
                    println(err)
                    //flash.update = "Invalid input try again"
                    // render(view: "showTopics", model: [name: flash.update])
                    render(view: "editTopic", model: [topicError: topic.errors])

                }
            }
        } else {
            // flash.update = "Topic already created before"
            // render(view: "showTopics", model: [name: flash.update])
            println("topic already created")
        }
    }

    def deleteTopic() {
        Topic topic = Topic.findById(params.name)
        List<LinkResource> linkResourceList=LinkResource.findAllByTopic(topic)
        linkResourceList.each {it ->
            it.delete(flush: true)
        }
        List<Subscription> subscriptionList=Subscription.findAllByTopic(topic)
        subscriptionList.each {it ->
            it.delete(flush: true)
        }
        topic.delete(flush: true)
        flash.deleteTopic="Topic deleted successfully"
        render(view: "/person/checkTheme", model: [name: flash.deleteTopic])
    }


}
