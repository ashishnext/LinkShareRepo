package linkshare.person.resource

import com.User
import grails.plugin.springsecurity.annotation.Secured
import linkshare.ResourceCO
import person.Person
import resource.LinkResource
import topic.Topic

@Secured(['ROLE_ADMIN', 'ROLE_USER'])
class ResourceController {
    def springSecurityService

    def index() {}

    def showResources() {

        String s= params.name
        Topic topic = Topic.findByTopicName(s)
        println(s)
        List<LinkResource> list = LinkResource.findAllByTopic(topic)
        render(view: "showResources", model: [resourceList: list])

    }

    def createResource(ResourceCO co) {

        User user = springSecurityService.currentUser
        if (co.validate()) {
            LinkResource linkResource = new LinkResource(url: co.link, description: co.description,
                    topic: Topic.findById(params.selectTopic), person: Person.findByUser(user))
            linkResource.save(flush: true)
            println(Topic.findById(params.selectTopic).topicName)

            flash.msg = "Resource shared"
            render(view: "/person/checkTheme", model: [name: flash.msg])
        }
        else {
            co.errors.allErrors.each { err ->
                println(err)
            }
            flash.msg="Invaid input try again"
            render(view:"/person/checkTheme" , model: [name:flash.msg] )
        }
    }

    def editResource(){
        LinkResource linkResource=LinkResource.findById(params.id)
        render(view: "editResource", model: [linkResourceObj:linkResource])

    }

    def updateResource() {
        LinkResource linkResource=LinkResource.findById(params.id)
        linkResource.url=params.url
        linkResource.description=params.description
        if (linkResource.validate()) {
            linkResource.save(flush: true)
            flash.updateRes="Resource updated successfully"
            render(view: "/person/landing", model: [name: flash.updateRes])

        }
        else {
            linkResource.errors.allErrors.each {err ->
                println(err)
            }
        }
    }

    def deleteResource() {
        LinkResource linkResource=LinkResource.findById(params.id)
        linkResource.delete(flush: true)
        flash.deleteResource="Resource deleted successfully"
        render(view: "/person/landing", model: [name: flash.deleteResource])
    }
}
