ActiveAdmin.register Category do
   index do
      column :id
      column :cat_name
      column :created_at
      column 'Actions' do |resource|
         link_to 'Edit', edit_admin_category_path(resource)
      end
   end
   
   permit_params :cat_name
end
