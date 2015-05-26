class ChangeCategoriesDefaultValue < ActiveRecord::Migration
  def self.up
    change_column :recipes, :tags, :string, :default => '0'
  end
  
  def self.down
    raise ActiveRecord::IrreversibleMigration, "Can't remove default"
  end
end
