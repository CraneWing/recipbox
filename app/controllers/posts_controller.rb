class PostsController < ApplicationController
   include EmojiHelper
   require 'will_paginate/array'
   layout 'forums'
   before_action :authenticate_user!, except: [:show]
   
   def new
      @topic = Topic.find(params[:topic_id])
      @post = @topic.posts.build
   end
   
   def create
      @topic = Topic.find(params[:topic_id])
      @post = @topic.posts.create(post_params)
      @post.user_id = current_user.id
      
      if @post.save
         flash[:success] = 'Post was successfully added'
         redirect_to topic_path(@topic)
      else
         flash[:danger] = 'There was a problem posting your comment'
         render 'new'
      end
   end
   
   def show
      @topic = Topic.find(params[:topic_id])
      @post = Post.find(params[:id])
      @comments = Comment.where("post_id = ?", @post.id).order('created_at asc')
   end
   
   private
      def post_params
         params.require(:post).permit(:user_id, :topic_id, :title, :body)
      end
end