class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  # will sanitize custom fields added to devise based user profile page
  before_filter :configure_devise_parameters, if: :devise_controller?
  
  protected
   def configure_devise_parameters
      devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:email, :password, :password_confirmation) }
      devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:email, :password, :first_name, :last_name, :username, :profile, :location, :avatar) }
   end
  
end
