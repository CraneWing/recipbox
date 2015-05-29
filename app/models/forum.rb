class Forum < ActiveRecord::Base
   has_many :posts
   has_many :comments
   has_many :forum_topics
end
