ActiveAdmin.register Recipe do
   scope :unapproved
   scope :untagged
   
   permit_params :title, :ingredients, :steps, :recipe_img, :comments, :user_id, :approved, :tags
end
