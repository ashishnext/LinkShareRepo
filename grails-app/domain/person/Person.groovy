package person

import com.User
import grails.plugin.springsecurity.annotation.Secured
import linkshare.LinkShareCO
import readingitem.ReadingItem
import resource.Resource
import resource.ResourceRating
import subscription.Subscription
import topic.Topic


class Person{
    String name
    Date dateCreated
    Date lastUpdated

    static  belongsTo = [user: User]
    static  hasMany = [topics: Topic, subscriptions: Subscription, resources: Resource, readingItems: ReadingItem, resourceRatings: ResourceRating]


    static constraints = {
    }




}
