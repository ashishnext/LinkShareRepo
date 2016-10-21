package com.linkshare

import com.User
import grails.transaction.Transactional
import person.Person

@Transactional
class TopicService {
    def springSecurityService

    def serviceMethod() {

    }

    def show() {
        User user = springSecurityService.currentUser
        Person person = Person.findByUser(user)
    }

    def edit() {

    }
}
