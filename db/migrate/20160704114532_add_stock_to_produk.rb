class AddStockToProduk < ActiveRecord::Migration
  def change
    add_column :produks, :stock, :integer
  end
end
