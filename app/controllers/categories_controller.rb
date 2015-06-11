class CategoriesController < ApplicationController
   def show
      @category = Category.find(params[:id])
      @recipes = Recipe.joins(:category_recipes).where("category_recipes.category_id = ?", @category.id)
   end
   
   def category_params
      params.require(:category).permit(:name)
   end
end
