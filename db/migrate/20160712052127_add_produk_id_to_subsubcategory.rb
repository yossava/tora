class AddProdukIdToSubsubcategory < ActiveRecord::Migration
  def change
    add_column :subsubcategories, :produk_id, :integer
  end
end
