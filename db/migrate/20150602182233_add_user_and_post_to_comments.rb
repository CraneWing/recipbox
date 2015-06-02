class AddUserAndPostToComments < ActiveRecord::Migration
  def change
    add_reference :comments, :user, index: true
    add_foreign_key :comments, :users
    add_reference :comments, :post, index: true
    add_foreign_key :comments, :posts
  end
end
