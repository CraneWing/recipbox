class CommentsController < ApplicationController
  layout 'forums'
  include EmojiHelper
  before_filter :set_post, only: [:create, :new]
  before_filter :set_comment, only: [:edit, :update]
  
  def new
      @comment = @post.comments.build
  end
  
  def create
      @comment = @post.comments.create(comment_params)
      @comment.user_id = current_user.id
      if @comment.save
        flash[:success] = 'Comment was successfully added'
        redirect_to :back
      else
        flash[:danger] = 'There was a problem posting your comment'
      end
  end
  
  def edit
  end
   
   def update
      respond_to do |format|
        if @comment.update_attributes(comment_params)
          format.html { redirect_to(@post, success: 'Your comment has been updated') }
          format.json { respond_with_bip(@comment) }
        else
          format.html { render :action => "show" }
          format.json { respond_with_bip(@comment) }
        end
      end
   end
   
  private
    def set_post
       @post = Post.find(params[:post_id])
    end
    
    def set_comment
        @comment = Comment.find(params[:id])
    end
      
    def comment_params
      params.require(:comment).permit(:user_id, :post_id, :body)
    end
end
