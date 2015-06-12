class CreateBlogComments < ActiveRecord::Migration
  def change
    create_table :blog_comments do |t|
      t.text :body
      t.integer :post_id
      t.integer :user_id
      t.timestamps null: false
    end
  end
end
