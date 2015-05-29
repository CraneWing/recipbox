ActiveAdmin.register Recipe do
   scope :unapproved
   scope :untagged
   
   index do
      column :title
      column :ingredients
      column :steps
      column :recipe_img
      column :comments
      column :user_id
      column :approved
      column :tags
      column 'Actions' do |resource|
         link_to 'Edit', edit_admin_recipe_path(resource)
      end
   end
end
