ActiveAdmin.register CategoryRecipe do
   controller do
      defaults finder: :find_by_recipe_id
   end
   
   index do
      column(:category_id) { |i| best_in_place i, :category_id, type: :input, path: [:admin, :category_recipes] }
      column(:recipe_id) { |i| best_in_place i, :recipe_id, type: :input, path: [:admin, :category_recipes] }
   end
   
   remove_filter :category
   remove_filter :recipe
   
   permit_params :category_id, :recipe_id
end
