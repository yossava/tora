class AddAttToProduk < ActiveRecord::Migration
  def change
    add_column :produks, :att, :string
  end
end
