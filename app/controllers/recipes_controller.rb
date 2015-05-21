class RecipesController < ApplicationController
  include RecipesHelper
  
  def index
    @recipes = Recipe.all
  end
  
  def new
      @recipe = Recipe.new
      @categories = Category.all
  end
  
  def show
    @recipe = Recipe.find(params[:id])
    @user = User.find_by_id(@recipe.user_id)
  end
  
  def create
      @recipe = Recipe.new(recipe_params)
      
     if @recipe.save
        serialize :categories, Array
        redirect_to current_user
        flash[:success] = 'Recipe was successfully added'
     else
        render action: 'new'
     end
  end
  
  def update
     @recipe = Recipe.find(params[:id])
     if @recipe.update(recipe_params)
         redirect_to current_user
         flash[:success] = 'Recipe was successfully updated'
     else
         render action: 'edit'
     end
     
  end
  
  def edit
    @recipe = Recipe.find(params[:id])
    @categories = Category.all
  end
  
  def print_recipe(recipe_id)
     @recipe = Recipe.find(params[recipe_id])
  end
  
  private
    def recipe_params
      params.require(:recipe).permit(:ingredients, :steps, :recipe_img, :comments, :categories, :user_id)
    end
end
