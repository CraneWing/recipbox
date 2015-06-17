class SearchController < ApplicationController
   layout 'forums'
   
   def index
      @search = Sunspot.search [Post, Comment] do
         fulltext params[:search]
         order_by :created_at, :desc
         paginate :page => params[:page], :per_page => 25
      end
      
      @results = @search.results

      respond_to do |format|
         format.html { render 'index'}
      end
   end
end
