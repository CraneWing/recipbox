class Topic < ActiveRecord::Base
   has_many :posts, dependent: :destroy
   
   delegate :user, to: :username
end
