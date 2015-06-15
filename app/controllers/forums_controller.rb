class ForumsController < ApplicationController
   layout 'forums'
   
   def index
      @topics = Topic.all
      
      if params[:search]
         empty_search = false
      else
         empty_search = true
      end
    
      if empty_search
         @search = ''
         @posts = []
      else
        @search = Sunspot.search [Post, Comment] do
           keywords params[:search]
        end
        @search = @search.results
      end
   end
end
