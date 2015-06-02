ActiveAdmin.register Topic do

   index do
      selectable_column
      column :id
      column :title
      column :description
      column 'Actions' do |resource|
         link_to 'Edit', edit_admin_topic_path(resource)
      end
   end

   permit_params :title, :description
end
