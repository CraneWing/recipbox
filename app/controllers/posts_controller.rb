class PostsController < ApplicationController
   private
    def post_params
      params.require(:post).permit(:user_id, :topic_id, :title, :body)
    end
end
