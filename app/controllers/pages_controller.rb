class PagesController < ApplicationController
  def home
  end

  def about
  end

  def blog
  end

  def gallery
    @image_urls = Post.all.map {|post| post.image_url if post.image?}.compact!
  end

  
  def new_contact
    @contact = Contact.new
  end
  
   
  def contact
    @contact = Contact.new(name: params[:name], email: params[:email], message: params[:message])
    @contact.save!
    
    flash[:notice] = "Thank you for your message. We will contact you soon!"
    redirect_to contact_path
    ContactMailer.welcome_email(params[:email], params[:name]).deliver_now
  end
  
  
end
