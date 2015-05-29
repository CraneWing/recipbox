class Topic < ActiveRecord::Base
   has_many :posts, through: :user
end
