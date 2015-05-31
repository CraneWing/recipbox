class CommentsController < ApplicationController
  layout 'forums'
  
  def new
    @comment = Comment.new
  end
  
  def create
    @comment = Comment.new
    
    if @comment.save
      flash[:success] = 'Comment was successfully added'
      redirect_to @post
    else
      flash[:danger] = 'There was a problem posting your comment'
    end
  end
  
  private
    def comment_params
      params.require(:comment).permit(:user_id, :post_id, :body)
    end
end
