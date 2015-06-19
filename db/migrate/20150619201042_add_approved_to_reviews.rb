class AddApprovedToReviews < ActiveRecord::Migration
  def up
    add_column :reviews, :approved, :integer, limit: 4, default: 0
  end
  
  def down
    remove_column :reviews, :approved
  end
end
