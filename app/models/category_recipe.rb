require 'composite_primary_keys'

class CategoryRecipe < ActiveRecord::Base
   
   belongs_to :category
   belongs_to :recipe
   
   self.primary_keys = [:category_id, :recipe_id]
end