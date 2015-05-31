Rails.application.routes.draw do
  devise_for :admins, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users, :controllers => {:registrations => 'registrations'}
  
  # user can see only profile page or page of all users
  # can view all recipes, their individual recipes, add recipe or edit
  # their existing recipes
  resources :recipes
  resources :users, only: [:index, :show, :edit, :update]
   
  # static pages 
  root 'pages#welcome'

  get 'pages/about' => 'pages#about'
  get 'pages/search' => 'pages#search'
  
end
