Rails.application.routes.draw do

  post '/rate' => 'rater#create', :as => 'rate'
  mount Bootsy::Engine => '/bootsy', as: 'bootsy'
  devise_for :admins, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users, :controllers => {:registrations => 'registrations'}
  
  # user can see only profile page or page of all users
  # can view all recipes, their individual recipes, add recipe or edit
  # their existing recipes
  resources :recipes do
    resources :reviews, only: [:index, :create, :new, :edit]
  end
  resources :reviews, only: [:show]
  resources :categories, only: [:show]
  resources :users, only: [:index, :show, :edit, :update, :delete]
  resources :forums, only: [:index]
  resources :comments, only: [:edit, :update, :delete]
  resources :posts, only: [:edit, :update, :show] do
    resources :comments, only: [:create, :new, :show]
  end
  resources :topics, only: [:show]
  
  resources :topics do
    resource :posts, only: [:create, :new]
  end
  
  resources :search, only: [:index]
  
  get 'blog' => 'blog#index'
  resources :blog_posts do
    resources :blog_comments, only: [:new, :create, :show]
  end

  # static pages 
  root 'pages#welcome'

  get 'pages/about' => 'pages#about'
  get 'pages/search/:q' => 'recipes#index'
  get 'pages/privacy' => 'pages#privacy'
end
