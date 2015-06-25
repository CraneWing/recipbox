class Comment < ActiveRecord::Base
   belongs_to :post, counter_cache: true
   belongs_to :user
   validates_presence_of :body
   delegate :username, :avatar, :location, to: :user
   
   searchable do
      text :body
      time :created_at
   end
end
