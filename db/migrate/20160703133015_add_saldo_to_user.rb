class AddSaldoToUser < ActiveRecord::Migration
  def change
    add_column :users, :saldo, :integer
  end
end
