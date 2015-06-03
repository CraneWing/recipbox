class Forum < ActiveRecord::Base
   has_many :topics
   has_many :posts
   has_many :comments
end
