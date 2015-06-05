class TopicsController < ApplicationController
  layout 'forums'
  before_action :authenticate_user!, except: [:index, :show]
  
  def show
    @topic = Topic.find(params[:id])
    @posts = Post.where("topic_id = ?", @topic.id)
    @posts = @posts.paginate(page: params[:page], per_page: 12)
  end
  
end
