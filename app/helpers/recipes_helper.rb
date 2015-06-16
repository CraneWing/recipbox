module RecipesHelper
   
   # ingredients are in recipes DB with semicolons as separators. searches
   # ingredients string and substitutes each semicolon with break tag to
   # display each item on its own line. raw method used to ensure <br> tag
   # is retained.
   def split_ingredients(ingredients)
      (ingredients.gsub(';', '<br>')).html_safe
   end
   
   # randomly generate a recipe to appear on the recipes page
   def featured_recipe
      recipe_count = Recipe.count
      recipe_id = 1 + rand(recipe_count)
      
      if Recipe.exists?(recipe_id)
         @recipe = Recipe.find(recipe_id)
      else
         @recipe = Recipe.find(1 + rand(recipe_count))
      end
   end
end
