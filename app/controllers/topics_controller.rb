class TopicsController < ApplicationController
  layout 'forums'
  
  def show
    @topic = Topic.find(params[:id])
    @posts = Post.where("topic_id = ?", @topic.id)
  end
end
