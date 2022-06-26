package assignment_curd

import com.bitmascot.security.MailDTO
import com.bitmascot.security.Token
import com.bitmascot.security.User
import grails.gorm.transactions.Transactional
import grails.plugins.mail.MailService

@Transactional
class EmailService {

    MailService mailService
    def groovyPageRenderer
    def grailsApplication

    /**
     * Sends the email to given email id
     */
    def sendMail(MailDTO mailDTO) {

        log.info "Sending Mail To ==== ${mailDTO?.toMailId}"

        mailService.sendMail {
            async true
            to mailDTO?.toMailId
            subject mailDTO.subject
            html mailDTO.content
        }
    }


    /*
        * Sends the reset password email
        */
    def sendResetPasswordEmail(User user, Token token) {
        MailDTO mailDTO = new MailDTO()
        mailDTO.with {
            toMailId = user?.email
            subject = "Password reset on Mobile Career Index"
            content = groovyPageRenderer.render(template: '/mail/resetPassword', model: [user: user,token:token])
        }
        sendMail(mailDTO)
    }
}