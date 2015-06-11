ActiveAdmin.register Category do
   index do
      column :id
      column :name
      column 'Actions' do |resource|
         link_to 'Edit', edit_admin_category_path(resource)
      end
   end
   
   remove_filter :category_recipes
   
   permit_params :cat_name
end
