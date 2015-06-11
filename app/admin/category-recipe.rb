ActiveAdmin.register CategoryRecipe do
   index do
      column :category_id 
      column :recipe_id
   end
   
   remove_filter :category
   remove_filter :recipe
   
   permit_params :cat_name
   
   permit_params :category_id, :recipe_id
end
