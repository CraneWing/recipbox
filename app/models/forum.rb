class Froum < ActiveRecord::Base
   has_many :topics
   has_many :posts
   
   delegate :username, to: :user
end
