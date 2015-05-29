class ForumsController < ApplicationController
   layout 'forums'
   
   def index
      @forum_topics = ForumTopic.all
   end
   
   def show
      @forum_topic = ForumTopic.find(params[:id])
      @posts = ForumTopic.includes(:posts).find(params[:topic_id])
   end
end
