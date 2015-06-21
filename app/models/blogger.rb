class Blogger < ActiveRecord::Base
  has_many :blog_posts
end
