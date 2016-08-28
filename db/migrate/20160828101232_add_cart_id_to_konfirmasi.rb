class AddCartIdToKonfirmasi < ActiveRecord::Migration
  def change
    add_column :konfirmasis, :cart_id, :integer
  end
end
