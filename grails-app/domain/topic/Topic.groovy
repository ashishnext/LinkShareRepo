package topic

import com.User
import linkshare.Enums
import person.Person
import resource.Resource
import subscription.Subscription

import java.sql.Date

class Topic {
    String topicName
    Date dateCreated
    Date lastUpdated

    Enums.Visibility visibility


    static belongsTo = [person: Person]
    static hasMany = [subscriptions: Subscription, resources: Resource]

    static constraints = {
        topicName nullable: false
    }
}
