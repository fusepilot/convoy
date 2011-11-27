class AddIsRootToFolders < ActiveRecord::Migration
  def change
    add_column :folders, :is_root, :boolean
  end
end
