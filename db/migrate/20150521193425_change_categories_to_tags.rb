class ChangeCategoriesToTags < ActiveRecord::Migration
  def change
    rename_column :recipes, :categories, :tags
  end
end
