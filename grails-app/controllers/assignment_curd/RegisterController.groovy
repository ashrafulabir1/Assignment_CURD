package assignment_curd

import com.bitmascot.security.Role
import com.bitmascot.security.User
import grails.plugin.springsecurity.annotation.Secured

import javax.xml.bind.ValidationException

@Secured('permitAll')
class RegisterController {

    static allowedMethods = [register: 'POST']

    UserService userService

    def index() {
        [user: flash.redirectParams]
    }

    def register() {
        try {
            def saveStatus = userService.save(params)

            //userService.createUserRole(user, userole)

            if(saveStatus.isSuccess) {
                redirect(controller: 'login', action: 'auth')
            } else {
                redirect(controller: 'register', action: 'index')
            }
        } catch (ValidationException e) {
            redirect(controller: 'register', action: 'index')
        }
    }
}
