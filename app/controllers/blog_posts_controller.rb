class BlogPostsController < ApplicationController
  def show
    @bloggers = Blogger.all
    @blog_post = BlogPost.find(params[:id])
    @blog_comments = BlogComment.where(blog_post_id: @blog_post.id)
  end
end
