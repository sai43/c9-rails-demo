class PostMailer < ApplicationMailer
    default from: 'notifications@example.com'
    
    def notification(post)
        @post = post
        @url = 'https://rails-demo-sai43.c9users.io'
        mail(to: @post.user.email, subject: 'Your Post submitted in my app')
    end

end
