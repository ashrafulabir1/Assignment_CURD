package assignment_curd

import com.bitmascot.security.Role
import com.bitmascot.security.User
import com.bitmascot.security.UserRole
import grails.gorm.transactions.Transactional

@Transactional
class UserService {

    def createUserRole(User user, Role adminRole) {
        if( !user.authorities.contains(adminRole) ) {
            UserRole.create(user, adminRole, true)
        }
    }
}
