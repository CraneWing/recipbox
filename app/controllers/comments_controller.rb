class CommentsController < ApplicationController
  layout 'forums'
  include EmojiHelper
  
  def new
    @post = Post.find(params[:post_id])
    @comment = @post.comments.build
  end
  
  def create
      @topic = Topic.find(:topic_id)
      @post = Post.find(params[:post_id])
      @comment = @post.comments.create(comment_params)
      if @comment.save
        @comment.user_id = current_user.id
        flash[:success] = 'Comment was successfully added'
        redirect_to topic_post_url(@topic.id, @post.id)
      else
        flash[:danger] = 'There was a problem posting your comment'
      end
  end
  
  private
    def comment_params
      params.require(:comment).permit(:user_id, :post_id, :body)
    end
end
