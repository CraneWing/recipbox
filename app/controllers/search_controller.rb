class SearchController < ApplicationController
   layout 'forums'
   
   def index
      @search = Sunspot.search [Post, Comment] do
         fulltext params[:search]
         paginate :page => params[:page], :per_page => 15
      end
      @results = @search.results
      
      respond_to do |format|
         format.html { render 'index'}
      end
   end
end
