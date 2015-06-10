class Category < ActiveRecord::Base
   has_many :recipes, through: :recipes_categories
end
