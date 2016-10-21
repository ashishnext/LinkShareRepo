package readingitem

import person.Person
import resource.Resource
import topic.Topic

class ReadingItem {
    Resource resource
    Boolean isRead

    static belongsTo = [person: Person]

    static constraints = {
    }
}
