class Comment < ActiveRecord::Base
   belongs_to :post
   belongs_to :user
   
   delegate :username, :avatar, :location, to: :user
   
   searchable do
      text :body
      time :created_at
   end
end
