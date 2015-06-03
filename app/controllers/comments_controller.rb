class CommentsController < ApplicationController
  layout 'forums'
  
  def new
    @post = Post.find(params[:post_id])
    @comment = @post.comments.build
  end
  
  def create
      @post = Post.find(params[:post_id])
      #@post.user_id = current_user.id
      @comment = @post.comments.create(comment_params)
    
    if @comment.save
      flash[:success] = 'Comment was successfully added'
      redirect_to post_path(@post.id)
    else
      flash[:danger] = 'There was a problem posting your comment'
    end
  end
  
  private
    def comment_params
      params.require(:comment).permit(:user_id, :post_id, :body)
    end
end
