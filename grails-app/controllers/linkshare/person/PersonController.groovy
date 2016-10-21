package linkshare.person

import com.Role
import com.User
import com.UserRole
import grails.plugin.springsecurity.annotation.Secured
import linkshare.LinkShareCO
import person.Person

@Secured(['ROLE_ADMIN', 'ROLE_USER'])
class PersonController {
    def springSecurityService

    static defaultAction = "test"

    def index() {}

    @Secured(['IS_AUTHENTICATED_ANONYMOUSLY'])
    def register(LinkShareCO co) {

        if (co.validate()) {
            if (!User.findByUsername(co.username)) {
                User user = new User(username: co.username, password: co.password)
                user.save(flush: true)
                UserRole.create(user, Role.get(2), true)
                println("User saved through form")

                User user1 = User.findByUsername(co.username)
                Person person = new Person(name: co.name, user: user1)
                person.save(flush: true)

                redirect(controller: "person", action: "landing")

            }
        } else {
            co.errors.allErrors.each { err ->
                println(err)
                flash.message = "Error while registering please try again "
                render(flash.message)

            }
        }
    }

    def landing() {

    }

    def test(){

    }

    def demo() {

    }

    def checkTheme() {

    }
}
