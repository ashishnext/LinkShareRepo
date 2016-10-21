import com.Role
import com.User
import com.UserRole
import linkshare.Enums
import person.Person
import resource.LinkResource
import resource.Resource
import subscription.Subscription
import topic.Topic

import java.sql.Date

class BootStrap {

    def init = { servletContext ->
        Boolean flag = false

        List<Role> roles = []
        roles[0] = new Role(authority: "ROLE_ADMIN")
        roles[1] = new Role(authority: "ROLE_USER")
        roles[2] = new Role(authority: "ROLE_CLIENT")

        roles.each { it ->
            if (!Role.findByAuthority(it.authority)) {
                if (it.validate()) {
                    it.save(flush: true)
                    println("Role saved ${it.authority}")
                } else {
                    it.errors.allErrors.each { err ->
                        println(err)

                    }
                }
            }

        }




        List<User> users = []

        users[0] = new User(username: "ashish@nexthoughts.com", password: "ashishdefault")
        users[1] = new User(username: "rahul@nexthoughts.com", password: "rahuldefault")
        users[2] = new User(username: "sunny@nexthoughts.com", password: "sunnydefault")
        users[3] = new User(username: "ayush@nexthoughts.com", password: "ayushdefault")

        users.each { it ->
            if (!User.findByUsername(it.username)) {
                if (it.validate()) {
                    it.save(flush: true)
                    println("User saved ${it.username}")
                    flag = true

                } else {
                    it.errors.allErrors.each { err ->
                        println(err)
                        flag = false
                    }
                }
            }
        }


        if (flag) {
            UserRole.create(users[0], roles[0], true)
            UserRole.create(users[1], roles[1], true)
            UserRole.create(users[2], roles[2], true)
            UserRole.create(users[3], roles[0], true)
        }

        Person person = new Person(name: "Ashish Gautam", user: User.get(1))
        if (!Person.findByName(person.name)) {
            if (person.validate()) {
                person.save(flush: true)
            } else {
                person.errors.allErrors.each { err ->
                    println(err)
                }
            }
        }

        Topic topic = new Topic(topicName: "Technology", dateCreated: new Date(2016, 10, 02), person: Person.get(1), visibility: Enums.Visibility.PUBLIC)
        if (!Topic.findByTopicName(topic.topicName)) {
            if (topic.validate()) {
                topic.save()
            } else {
                topic.errors.allErrors.each { err ->
                    println(err)
                }
            }
        }

//        Resource resource = new Resource(person: Person.get(1), topic: Topic.get(1), dateCreated: new Date(2016, 10, 04),
//                description: "Grails documentation")
//        if (!Resource.findByDescription(resource.description)) {
//            if (resource.validate()) {
//                resource.save()
//            } else {
//                resource.errors.allErrors.each { err ->
//                    println(err)
//                }
//            }
//        }
        Person person1 = Person.get(1)
        LinkResource linkResource = new LinkResource(url: "www.groovy.com", topic: Topic.get(1),
                description: "Groovy documentation", person: person1)

        if (!LinkResource.findByUrl(linkResource.url)) {
            if (linkResource.validate()) {
                linkResource.save(flush: true)
            } else {
                linkResource.errors.allErrors.each { err ->
                    println("======================================" + err)
                }
            }
        }

        Subscription subscription = new Subscription(person: Person.get(1), topic: Topic.get(1))

        if (!(Subscription.findByTopic(subscription.topic) && Subscription.findByPerson(subscription.person))) {
            if (subscription.validate()) {
                subscription.save()
            } else {
                subscription.errors.allErrors.each { err ->
                    println(err)
                }
            }
        }


        Person person2 = Person.get(1)

        if (!Topic.findByTopicName("Social Media")) {
            person2.addToTopics(topicName: "Social Media", visibility: Enums.Visibility.PUBLIC)
            person2.save()
        }


    }

    def destroy = {
    }


}