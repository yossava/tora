class AddRatingToProduk < ActiveRecord::Migration
  def change
    add_column :produks, :rating, :decimal
  end
end
