package resource

import person.Person

class ResourceRating {
    Resource resource
    Integer score

    static belongsTo = [person: Person]

    static constraints = {
    }
}
