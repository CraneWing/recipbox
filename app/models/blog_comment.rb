class BlogComment < ActiveRecord::Base
   belongs_to :blog_post, counter_cache: true
   belongs_to :user, counter_cache: true
   
   delegate :username, to: :user
end
