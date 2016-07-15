class AddBlockToProduk < ActiveRecord::Migration
  def change
    add_column :produks, :block, :boolean, default: false
  end
end
