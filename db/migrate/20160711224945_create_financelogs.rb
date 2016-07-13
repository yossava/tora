class CreateFinancelogs < ActiveRecord::Migration
  def change
    create_table :financelogs do |t|
      t.integer :user_id
      t.integer :toko_id
      t.decimal :jumlah
      t.integer :produk_id

      t.timestamps null: false
    end
  end
end
