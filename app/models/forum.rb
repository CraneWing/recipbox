class Forum < ActiveRecord::Base
   has_many :posts
   has_many :comments
   has_many :topics
end
