class Post < ActiveRecord::Base
   has_many :comments, dependent: :destroy
   belongs_to :topic
   belongs_to :user
   validates_presence_of :title, :body
   
   searchable do
      text :title, :body
      time :created_at
   end
   
   delegate :username, :avatar, :location, to: :user
end
