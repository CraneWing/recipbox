class UsersController < ApplicationController
  #def index
  #end
  
   def show
      @user = User.find(params[:id])
      @recipes = @user.recipes
   end
  
   def edit
     @user = User.find(params[:id])
   end
  
   def new
      @user = User.new(user_params)
         
      if @user.save
          redirect_to @root_path
      else
         render 'new'
      end
   end
  
  private
    def user_params
      params.require(:user).permit(:email, :password, :first_name, :last_name, :username, :location, :profile, :avatar)
    end

end
