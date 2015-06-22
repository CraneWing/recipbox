ActiveAdmin.register Blogger do

  index do
      column :id
      column :name
      column :bio
      column :blogger_img
      column :created_at
      column 'Actions' do |resource|
         link_to 'Edit', edit_admin_blogger_path(resource)
      end
   end
  
   permit_params :name, :bio, :blogger_img
end
