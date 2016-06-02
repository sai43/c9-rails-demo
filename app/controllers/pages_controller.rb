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

  def contact
    name = params[:name]
    
  end
end
