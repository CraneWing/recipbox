class ReviewsController < ApplicationController
   before_action :authenticate_user!, except: [:index, :show]
    
   def index
      @recipe = Recipe.find(params[:recipe_id])
      @reviews = Review.where(recipe_id: @recipe.id).order(created_at: :desc)
   end
   
   def show
      @review = Review.find(params[:id])
      @recipe = Recipe.where(id: @review.recipe_id)
   end
   
   def new
      @recipe = Recipe.find(params[:recipe_id])
      @review = @recipe.reviews.build
   end
   
   def create
     @recipe = Recipe.find(params[:recipe_id])
     @review = @recipe.reviews.create(review_params)
     @review.user_id = current_user.id
      
     if @review.save
        @review.user_id = current_user.id
        redirect_to recipe_path(@recipe.id)
        flash[:success] = 'Review has been added and will appear soon.'
     else
        render action: 'new'
     end
   end
   
   private
    def review_params
      params.require(:review).permit(:body, :recipe_id, :user_id, :stars)
    end
end
