class Post < ActiveRecord::Base
   has_many :comments, dependent: :destroy
   belongs_to :topic
   belongs_to :user
   
   delegate :username, to: :user
end
