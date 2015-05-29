ActiveAdmin.register User do
   index do
      column :id
      column :first_name
      column :last_name
      column :username
      column :email
      column :password
      column :location
      column :profile
      column :avatar
      column 'Join Date', :created_at
      column 'Actions' do |resource|
         link_to 'Edit', edit_admin_user_path(resource)
      end
   end
   
   permit_params :first_name, :last_name, :username, :email, :password, :location, :profile, :avatar
end
