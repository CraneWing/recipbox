ActiveAdmin.register Review do

  index do
      column :id
      column :stars
      column :body
      column :user_id
      column :approved
      column :created_at
      column 'Actions' do |resource|
         link_to 'Edit', edit_admin_review_path(resource)
      end
   end
  
   permit_params :user_id, :stars, :body, :approved
end
