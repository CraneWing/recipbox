ActiveAdmin.register User do
   index do
      column :id
      column :first_name
      column :last_name
      column :user_name
      column :email
      column :password
      column :location
      column :profile
      column :avatar
      column 'Join Date', :created_at
   end
end
