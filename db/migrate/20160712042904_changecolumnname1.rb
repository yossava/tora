class Changecolumnname1 < ActiveRecord::Migration
  def change
    rename_column :subcategories, :gambar_kategori, :slide1
    rename_column :subcategories, :gambar_kategori2, :slide2
    rename_column :subcategories, :gambar_kategori3, :slide3
  end
end
