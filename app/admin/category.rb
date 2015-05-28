ActiveAdmin.register Category do
   index do
      column :id
      column :cat_name
      column :created_at
   end
   
   permit_params :cat_name
end
