class ApplicationController < ActionController::Base

  def forem_user
    current_user
  end
  helper_method :forem_user

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  # will sanitize custom fields added to devise based user profile page
  before_filter :configure_devise_parameters, if: :devise_controller?
  
  protected
   def configure_devise_parameters
      devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:username, :email, :password, :password_confirmation, :remember_me) }
      devise_parameter_sanitizer.for(:sign_in) { |u| u.permit(:login, :username, :email, :password, :remember_me) }
      devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:email, :password, :first_name, :last_name, :username, :profile, :location, :avatar) }
   end
  
end
