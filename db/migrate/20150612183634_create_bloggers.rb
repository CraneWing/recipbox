class CreateBloggers < ActiveRecord::Migration
  def change
    create_table :bloggers do |t|
      t.string :name
      t.text :bio
      t.string :blogger_img
      t.timestamps null: false
    end
  end
end
