ActiveAdmin.register BlogPost do

  index do
      column :id
      column :blogger_id
      column :title
      column :body
      column :created_at
      column 'Actions' do |resource|
         link_to 'Edit', edit_admin_blog_post_path(resource)
      end
   end
  
   permit_params :blogger_id, :title, :body
end
