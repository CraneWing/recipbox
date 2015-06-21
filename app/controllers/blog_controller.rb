class BlogController < ApplicationController
  def index
    @bloggers = Blogger.all
    @blog_posts = BlogPost.all.order(created_at: :desc)
  end
end
