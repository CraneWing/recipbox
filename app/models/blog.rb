class Blog < ActiveRecord::Base
   has_many :blog_posts
   has_many :blog_comments
   has_many :bloggers
end
