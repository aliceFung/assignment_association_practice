class Tag < ActiveRecord::Base
  has_many :post_taggings 
  has_many :posts, :source => :post, :through => :post_taggings
  has_many :authors , :through => :tagged_posts, :source => :user_posts
end
