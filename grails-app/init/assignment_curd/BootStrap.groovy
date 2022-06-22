package assignment_curd

import com.bitmascot.security.Role
import com.bitmascot.security.User

class BootStrap {

    UserService userService

    def init = { servletContext ->

    //  def adminRole = Role.findOrSaveWhere(authority: 'ROLE_ADMIN')
     // def user = User.findOrSaveWhere(username: 'abirhaque6@mail.com', password: 'abir')

      //userService.createUserRole(user, adminRole)
    }
    def destroy = {
    }
}
