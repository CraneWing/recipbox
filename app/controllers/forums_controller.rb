class ForumsController < ApplicationController
   layout 'forums'
   
   def index
      @topics = Topic.all
   end
   
   def show
      @topic = Topic.find(params[:id])
      @posts = Post.where({ topic_id: @topic.id })
   end
end
