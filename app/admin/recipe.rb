ActiveAdmin.register Recipe do
   scope :unapproved
   
   index do
      column :title
      column :ingredients
      column :steps
      column :recipe_img
      column :comments
      column :user_id
      column :approved
      column 'Actions' do |resource|
         link_to 'Edit', edit_admin_recipe_path(resource)
      end
   end
   
   remove_filter :category_recipes
   
   permit_params :title, :ingredients, :steps, :recipe_img, :comments, :user_id, :approved
end
