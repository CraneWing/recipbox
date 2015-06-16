class Post < ActiveRecord::Base
   has_many :comments, dependent: :destroy
   belongs_to :topic
   belongs_to :user
   
   searchable do
      text :title
      text :body
   end
   
   delegate :username, :avatar, :location, to: :user
   delegate :topic_id, to: :topic
end
