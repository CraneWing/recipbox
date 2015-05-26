# from hibbard.eu/ested-attributes-and-updating-without-a-password-in-devise
# and platformatec (Devise creator)
class RegistrationsController < Devise::RegistrationsController
   before_filter :authenticate_user!, only: [:edit, :update, :create, :destroy]
   
   def new
      build_resource({})
      yield resource if block_given?
      respond_with self.resource
   end
   
   def update
      account_update_params = devise_parameter_sanitizer.sanitize(:account_update)
      @user = User.find(current_user.id)
      
      if needs_password?
         successfully_updated = @user.update_with_password(account_update_params)
      else
         account_update_params.delete('password')
         account_update_params.delete('password_confirmation')
         account_update_params.delete('current_password')
         successfully_updated = @user.update_attributes(account_update_params)
      end
 
      if successfully_updated
         sign_in @user, :bypass => true
         set_flash_message :notice, :updated
         redirect_to current_user
      else
        render 'edit'
      end
   end
   
  private
 
  def needs_password?
    @user.email != params[:user][:email] || params[:user][:password].present?
  end
end
