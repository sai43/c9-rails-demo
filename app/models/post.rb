class Post < ActiveRecord::Base
    
    # Active Record connect the class 'Post' and database table 'posts'
    # posts table contains - title, body
    
    validates :title, :body, presence: true
    
    validates :title, length: { minimum: 8 }
    
    belongs_to :user  #one_to_one
    
     mount_uploader :image, ImageUploader
    
    
end
