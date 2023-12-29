class RegistrationMailer < ApplicationMailer
    def welcome_email(author)
        @author = author
        Rails.logger.info("Sending email to #{author.email}")
    mail(to: author.email, subject: 'Welcome to Our App')
      end
end
