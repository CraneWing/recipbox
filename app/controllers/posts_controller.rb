class PostsController < ApplicationController
   include EmojiHelper
   require 'will_paginate/array'
   layout 'forums'
   respond_to :html, :json
   before_action :authenticate_user!, except: [:show]
   before_filter :set_topic, only: [:create, :new]
   
   def new
      @post = @topic.posts.build
   end
   
   def create
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
      @post = Post.find(params[:id])
      @comments = Comment.where(post_id: @post.id).order('created_at asc')
   end
   
   def edit
     @post = Post.find(params[:id])
   end
   
   def update
    @post = Post.find(params[:id])
  
    respond_to do |format|
      if @post.update_attributes(post_params)
        format.html { redirect_to(@post, :success => 'Post has been updated') }
        format.json { respond_with_bip(@post) }
      else
        format.html { render :action => "show" }
        format.json { respond_with_bip(@post) }
      end
    end
   end
   
   private
      def post_params
         params.require(:post).permit(:user_id, :topic_id, :title, :body)
      end
      
      def set_topic
         @topic = Topic.find(params[:topic_id])
      end
end