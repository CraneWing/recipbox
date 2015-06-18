class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.text :body
      t.integer :stars
      t.integer :user_id
      t.integer :recipe_id

      t.timestamps null: false
    end
  end
end
