class Recipe < ActiveRecord::Base
   belongs_to :user
   has_many :categories
   
   scope :unapproved, proc { where(:approved => 0) }
   scope :untagged, proc { where(:tags => 0) }
   
   validates_presence_of :title, :ingredients, :steps
   
   mount_uploader :recipe_img, ImageUploader
end
