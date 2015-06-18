class Review < ActiveRecord::Base
   belongs_to :user
   belongs_to :recipe
   
   delegate :username, to: :user
end
