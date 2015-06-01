class TopicsController < ApplicationController
  layout 'forums'
  
  def show
    @topic = Topic.find(params[:id])
    @posts = Post.where("topic_id = ?", @topic.id)
  end
  
  def new
    @topic = Topic.new
  end
  
  def create
    @topic  = Topic.new
    
    if @topic.save
      redirect_to @topic
      flash[:success] = 'Topic added successfully'
    else
      render ''
    end 
  end

  private
    def topic_params
      params_require(:topic).permit(:title)
    end
end
