package resource

import person.Person
import readingitem.ReadingItem
import topic.Topic

class Resource {
    String description
    Topic topic
    Date dateCreated
    Date lastUpdated

    static belongsTo = [person:Person]
    static hasMany = [readingItems: ReadingItem]

    static constraints = {
    }
}
