module RecipesHelper
   def split_ingredients(ingredients)
      raw(ingredients.gsub(';', '<br>'))
   end
end
