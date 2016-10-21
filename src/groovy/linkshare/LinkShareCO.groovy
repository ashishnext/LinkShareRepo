package linkshare

import grails.validation.Validateable

@Validateable
class LinkShareCO {
    String name
    String username
    String password
    String confirmPassword

    static constraints = {

        confirmPassword nullable: true, validator: {val, obj ->
            if (!val.equals(obj.password)) {
                return false
            }
        }
    }
}
