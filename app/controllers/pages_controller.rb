class PagesController < ApplicationController
   def about
   end
   
   def search
   end
   
   def welcome
      @recipes = Recipe.all.order('created_at desc').limit(5)
      @users = User.all.order('created_at desc').limit(5)
   end
end
