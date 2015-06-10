Rails.application.routes.draw do

  mount Bootsy::Engine => '/bootsy', as: 'bootsy'
  devise_for :admins, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users, :controllers => {:registrations => 'registrations'}
  
  # user can see only profile page or page of all users
  # can view all recipes, their individual recipes, add recipe or edit
  # their existing recipes
  resources :recipes
  resources :categories, only: [:show]
  resources :users, only: [:index, :show, :edit, :update, :delete]
  resources :forums, only: [:index]
  resources :comments, only: [:edit, :update, :delete]
  resources :posts do
    resources :comments, only: [:create, :new, :show]
  end
  resources :topics do
    resources :posts
  end

   
  # static pages 
  root 'pages#welcome'

  get 'pages/about' => 'pages#about'
  get 'pages/search/:q' => 'recipes#index'
  
end
