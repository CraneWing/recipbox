module RecipesHelper
   
   # ingredients are in recipes DB with semicolons as separators. searches
   # ingredients string and substitutes each semicolon with break tag to
   # display each item on its own line. raw method used to ensure <br> tag
   # is retained.
   def split_ingredients(ingredients)
      (ingredients.gsub(';', '<br>')).html_safe
   end
   
   def get_recipe_tags(tags)
      # split recipe categories string by comma and put into array cat_tags
      cat_tags = tags.split(',')
      # convert categories from strings to integers
      cat_tags = cat_tags.map(&:to_i)
      # variable for recipe cat array length
      cat_tags_len = cat_tags.length
      # incrementing index and @tagged array for matching categories
      i = 0
      @tagged = Hash.new
      # loop thru and compare the categories DB to category nums from
      # the recipe. if there's a match, add the cat ID and name to @tagged
      # hash. this hash then looped thru on recipe show page to display its
      # tags, which will be links to other recipes in that category.
      while i < cat_tags_len do
         @categories.each do |category|
           if category.id == cat_tags[i]
             @tagged[category.id] = category.cat_name
           end
         end
         i += 1
      end
   end
      
end
