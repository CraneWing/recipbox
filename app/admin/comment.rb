ActiveAdmin.register Comment, as: "ForumComment" do

  index do
      column :id
      column :user_id
      column :body
      column :post_id
      column :created_at
      column 'Actions' do |resource|
         link_to 'Edit', edit_admin_comments_path(resource)
      end
   end
  
   permit_params :user_id, :post_id, :body
end
