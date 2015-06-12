class CreateBlogPosts < ActiveRecord::Migration
  def change
    create_table :blog_posts do |t|
      t.string :title
      t.text :body
      t.integer :blogger_id
      t.timestamps null: false
    end
  end
end
