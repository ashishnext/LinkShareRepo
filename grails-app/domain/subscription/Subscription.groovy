package subscription

import person.Person
import topic.Topic

class Subscription {
    Topic topic
    Date dateCreated

    static belongsTo = [person: Person]


    static constraints = {
    }
}
