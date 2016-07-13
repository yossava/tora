class AddSlugToProduk < ActiveRecord::Migration
  def change
    add_column :produks, :slug, :string
    add_index :produks, :slug, unique: true
  end
end
