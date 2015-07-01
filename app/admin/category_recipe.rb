require 'composite_primary_keys'

ActiveAdmin.register CategoryRecipe do
   
   form do |f|
      f.semantic_errors
      inputs 'Catgory Recipes' do
         input :category_id
         input :recipe_id
      end
      f.submit
   end
   
   remove_filter :category
   remove_filter :recipe
   
   permit_params :category_id, :recipe_id
end
