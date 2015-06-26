class Recipe < ActiveRecord::Base
   belongs_to :user, counter_cache: true
   has_many :reviews
   has_many :category_recipes
   has_many :categories, through: :category_recipes
   
   delegate :username, to: :user
   
   scope :unapproved, proc { where(:approved => 0) }
   
   searchable do
      text :title, :boost => 5
      text :ingredients
   end
   
   validates_presence_of :title, :ingredients, :steps
   
   mount_uploader :recipe_img, ImageUploader
end
