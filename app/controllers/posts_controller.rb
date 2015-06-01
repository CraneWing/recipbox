class PostsController < ApplicationController
   layout 'forums'
   
   def new
      @post = Post.new
   end
   
   def create
      @post = Post.new(post_params)
      
      if @post.save
         flash[:success] = 'Post was successfully added'
         redirect_to topics_path
      else
         flash[:danger] = 'There was a problem posting your comment'
      end
   end
   
   def show
      @post = Post.find(params[:id])
      @topic = Topic.where("id = ?", @post.topic_id)
   end
   
   private
      def post_params
         params.require(:post).permit(:user_id, :topic_id, :title, :body)
      end
end