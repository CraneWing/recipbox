class SearchController < ApplicationController
   layout 'forums'
   
   def index
      @search = Sunspot.search [Post, Comment] do
         keywords params[:search]
      end
      
      @results = @search.results
      
      respond_to do |format|
         format.html { render 'index'}
      end
   end
end
