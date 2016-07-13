class Changecolumndefault < ActiveRecord::Migration
  def change
    change_column :subcategories, :gambar_kategori,  :string, :default => nil
  end
end
