class BlogCommentsController < ApplicationController
  def new
    @blog_post = BlogPost.find(params[:blog_post_id])
    @blog_comment = @blog_post.blog_comments.build
  end
  
  def create
      @blog_post = BlogPost.find(params[:blog_post_id])
      @blog_comment = @blog_post.blog_comments.create(blog_comment_params)
      #@blog_comment.user_id = current_user.id
      if @blog_comment.save
        flash[:success] = 'Comment was successfully added'
        redirect_to :blog_post_path(@blog_post.id)
      else
        flash[:danger] = 'There was a problem posting your comment'
      end
  end
  
  private
    def blog_comment_params
      params.require(:blog_comment).permit(:user_id, :blog_post_id, :body)
    end
end
