Rails.application.routes.draw do
  devise_for :admins, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users, :controllers => {:registrations => 'registrations'}
  
  # user can see only profile page or page of all users
  # can view all recipes, their individual recipes, add recipe or edit
  # their existing recipes
  resources :recipes, only: [:create, :edit, :update, :show, :index, :destroy]
  resources :posts
  resources :topics
  resources :comments
  resources :forums, only: [:index, :show]
  resources :users, only: [:index, :show, :edit, :update]
   
  # static pages 
  root 'pages#welcome'

  get 'pages/about' => 'pages#about'
  get 'pages/search' => 'pages#search'

  
  ## user devise routes
  #get 'users/sign_up' => 'devise/registrations#new'
  #get 'registrations/edit' => 'devise/registrations#edit'
  #get 'users/sign_in' => 'devise/sessions#new'
  #get 'users/sign_out' => 'devise/sessions#destroy'
  #
  ## recipe routes
  #post 'recipes/create' => 'recipes#create'
  #get 'recipes/:id/edit' => 'recipes#edit'
  #get 'recipes/:id' => 'recipes#show'
  #post 'recipes/:id' => 'recipes#update'
  
end
