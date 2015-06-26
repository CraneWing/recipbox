class Review < ActiveRecord::Base
   belongs_to :user, counter_cache: true
   belongs_to :recipe, counter_cache: true
   
   delegate :username, to: :user
   delegate :title, to: :recipe
end
