Rails.application.routes.draw do
  devise_for :users, :controllers => {:registrations => 'registrations'}
  
  # user can see only profile page or page of all users
  # can view all recipes, their individual recipes, add recipe or edit
  # their existing recipes
  resources :users, only: [:index, :show]
  resources :recipes
   
  # static pages 
  root 'pages#welcome'

  get 'pages/about' => 'pages#about'
  
  # user devise routes
  get 'users/sign_up' => 'devise/registrations#new'
  get 'users/edit' => 'devise/registrations#edit'
  get 'users/sign_in' => 'devise/sessions#new'
  get 'users/sign_out' => 'devise/sessions#destroy'
  
  post 'recipes/create' => 'recipes#create'
  get 'recipes/:id/edit' => 'recipes#edit'
  get 'recipes/:id' => 'recipes#show'

end
