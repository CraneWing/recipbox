ActiveAdmin.register Post do

  index do
      column :id
      column :title
      column :body
      column :user_id
      column :created_at
      column 'Actions' do |resource|
         link_to 'Edit', edit_admin_post_path(resource)
      end
   end
  
   permit_params :user_id, :title, :body
end
