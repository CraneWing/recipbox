class RecipesController < ApplicationController
  include RecipesHelper
  
  def index
    @search = Recipe.solr_search do
       fulltext params[:search]
    end
    @recipes = @search.results
  end
  
  def new
      @recipe = Recipe.new
      @categories = Category.all
  end
  
  def show
    @recipe = Recipe.find(params[:id])
    @user = User.find_by_id(@recipe.user_id)
    @categories = Category.all
  end
  
  def create
      @recipe = Recipe.new(recipe_params)
      
     if @recipe.save
        redirect_to current_user
        flash[:success] = 'Recipe was successfully added and will be viewable shortly'
     else
        render action: 'new'
     end
  end
  
  def update
     @recipe = Recipe.find(params[:id])
     if @recipe.update(recipe_params)
        if params[:recipe][:recipe_img].present?
          render :crop
        else
         redirect_to current_user
         flash[:success] = 'Recipe was successfully updated'
        end
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
      params.require(:recipe).permit(:title, :ingredients, :steps, :recipe_img, :comments, :categories, :user_id, :approved, :tags)
    end
end
