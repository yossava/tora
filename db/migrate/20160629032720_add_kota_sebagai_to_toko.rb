class AddKotaSebagaiToToko < ActiveRecord::Migration
  def change
    add_column :tokos, :kota_sebagai, :string
  end
end
