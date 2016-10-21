package linkshare.person.subscription

import com.User
import grails.plugin.springsecurity.annotation.Secured
import person.Person

@Secured(['ROLE_ADMIN', 'ROLE_USER'])
class SubscriptionController {

    def springSecurityService

    def index() {}

    def showSubscriptions() {
        User user=springSecurityService.currentUser
        Person person=Person.findByUser(user)
        render(view: "showSubscriptions", model: [listSubscriptions: person.subscriptions])

    }
}
