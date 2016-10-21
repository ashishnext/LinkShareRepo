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

    static def recentTopicsAdmin() {
        def c=Topic.createCriteria()
        def result=c.list(max: 5) {
            order("dateCreated", "desc")
        }
        List<Topic> topicList=result as List<Topic>
        return topicList
    }

    static def recentTopicsClient() {
        def c=Topic.createCriteria()
        def result=c.list(max: 5) {
            eq("visibility", Enums.Visibility.PUBLIC)
            order("dateCreated", "desc")
        }
        List<Topic> topicList=result as Topic
        return topicList
    }
}
