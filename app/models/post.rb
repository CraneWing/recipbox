class Post < ActiveRecord::Base
   has_many :comments, dependent: :destroy
   belongs_to :topic, counter_cache: true
   belongs_to :user, counter_cache: true
   
   validates_presence_of :title, :body
   
   searchable do
      text :title, :body
      time :created_at
   end
   
   delegate :username, :avatar, :location, :posts_count, to: :user
end
