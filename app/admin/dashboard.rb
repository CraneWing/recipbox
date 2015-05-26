ActiveAdmin.register_page "Dashboard" do

  menu priority: 1, label: proc{ I18n.t("active_admin.dashboard") }
  
  content title: proc{ I18n.t("active_admin.dashboard") } do
    
     section 'Newest Members' do
      table_for User.order("created_at desc").limit(4) do
        column :id do |user|
          link_to user.id, admin_user_path(user)
        end
        column :username
        column :email
        column 'Join Date', :created_at
      end
      strong {link_to 'All Users', admin_users_path}
    end
     
     section 'Newest Recipes' do
      table_for Recipe.order("created_at desc").limit(4) do
        column :id do |recipe|
          link_to recipe.id, admin_recipe_path(recipe)
        end
        column :title
        column :ingredients do |recipe|
          truncate(recipe.ingredients, omission: '...',  separator: ' ', length: 55)
        end
        column :steps do |recipe|
          truncate(recipe.steps, omission: '...', separator: ' ', length: 100)
        end
        column 'Join Date', :created_at
      end
      strong {link_to 'All Recipes', admin_recipes_path}
    end
  end # content
end
