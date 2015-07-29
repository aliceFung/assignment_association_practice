class User < ActiveRecord::Base
  has_many :comments, :class_name => "Comment", 
                               :dependent => :destroy
  has_many :user_posts
  has_many :posts,
           :source => :post, 
           :through => :user_posts

  has_many :tags, 
           :through => :authored_posts

end
