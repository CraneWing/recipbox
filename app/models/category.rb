class Category < ActiveRecord::Base
   has_many :recipes, through: :recipes_categories
   has_many :recipes_categories
end
