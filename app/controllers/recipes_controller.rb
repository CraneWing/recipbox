class RecipesController < ApplicationController
  include RecipesHelper
  before_action authenticate_user!, only: [:new, :edit]
  
  def index
    if params[:search]
      empty_search = false
    else
      empty_search = true
    end
    
    if empty_search
       @search = ''
       @recipes = []
    else
      @search = Recipe.solr_search do
         keywords params[:search]
      end
      @recipes = @search.results
    end
  end
  
  def new
      @recipe = Recipe.new
      @categories = Category.all
  end
  
  def show
    @recipe = Recipe.find(params[:id])
    @user = User.joins(:recipe).where(:recipe => {:user_id => :user.id})
   #@categories = Recipe.joins("left outer join recipes_categories on recipe.id = recipes_categories.recipe_id").joins("right outer join categories on category.id = recipes_categories.category_id)
  end
  
  def create
     @recipe = Recipe.new(recipe_params)
      
     if @recipe.save
        @recipe.user_id = current_user.id
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
      params.require(:recipe).permit(:title, :ingredients, :steps, :recipe_img, :comments, :user_id, :approved, :tags)
    end
end
