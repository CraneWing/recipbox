class ForumsController < ApplicationController
   layout 'forums'
   
   def index
      @topics = Topic.all
   end
   
   def show
   end
end
