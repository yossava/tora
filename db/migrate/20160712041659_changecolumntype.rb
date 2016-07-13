class Changecolumntype < ActiveRecord::Migration
  def change
    rename_column :subcategories, :subcategori_image, :gambar_kategori
  end
end
