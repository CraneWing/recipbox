class Post < ActiveRecord::Base
   has_many :comments, through: :user
   belongs_to :topic
   belongs_to :user
end
