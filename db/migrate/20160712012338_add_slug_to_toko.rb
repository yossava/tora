class AddSlugToToko < ActiveRecord::Migration
  def change
    add_column :tokos, :slug, :string
    add_index :tokos, :slug, unique: true
  end
end
