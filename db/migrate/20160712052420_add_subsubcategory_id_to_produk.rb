class AddSubsubcategoryIdToProduk < ActiveRecord::Migration
  def change
    add_column :produks, :subsubcategory_id, :integer
  end
end
