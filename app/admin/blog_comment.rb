ActiveAdmin.register BlogComment do

  index do
      column :id
      column :user_id
      column :body
      column :blog_post_id
      column :created_at
      column 'Actions' do |resource|
         link_to 'Edit', edit_admin_blog_comment_path(resource)
      end
   end
  
   permit_params :user_id, :blog_post_id, :body
end
