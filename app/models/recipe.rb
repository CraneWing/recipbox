class Recipe < ActiveRecord::Base
   belongs_to :user
   has_many :categories
   
   validates_presence_of :ingredients, :steps
   
   mount_uploader :recipe_img, ImageUploader
end
