class ContactMailer < ApplicationMailer
    
    def welcome_email(email, name)
      mail(to: email,
           body: "This is sample email from this blog app",
           content_type: "text/html",
           subject: "Welcome to the sai's blog application #{name}!"
          )
    end
    

end
