class Recipe < ActiveRecord::Base
   belongs_to :user
   has_many :recipes_categories
   has_many :categories, through: :recipes_categories
  
   delegate :username, to: :user
   
   scope :unapproved, proc { where(:approved => 0) }
   scope :untagged, proc { where(:category_ids => 0) }
   
   searchable do
      text :title, :boost => 5
      text :ingredients
   end
   
   validates_presence_of :title, :ingredients, :steps
   
   mount_uploader :recipe_img, ImageUploader
end
