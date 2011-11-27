class CreateFolders < ActiveRecord::Migration
  def change
    create_table :folders do |t|
      t.string :name
      t.references :user
      t.references :parent
      t.timestamps
    end
  end
end
