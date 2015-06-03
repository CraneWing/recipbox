class CommentsController < ApplicationController
  layout 'forums'
  
  def new
    @post = Post.find(params[:post_id])
    @comment = @post.comments.build
  end
  
  def create
      @post = Post.find(params[:post_id])
      @comment = @post.comments.create(comment_params)
    if user_signed_in?
      @comment.user_id = current_user.id
      if @comment.save
        flash[:success] = 'Comment was successfully added'
        redirect_to topic_post_path
      else
        flash[:danger] = 'There was a problem posting your comment'
      end
    else
      flash[:danger] = 'You must be logged in to post a comment on this forum'
      redirect_to forums_path
    end
  end
  
  private
    def comment_params
      params.require(:comment).permit(:user_id, :post_id, :body)
    end
end
