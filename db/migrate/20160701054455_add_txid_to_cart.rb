class AddTxidToCart < ActiveRecord::Migration
  def change
    add_column :carts, :txid, :string
  end
end
