class AddSaldo2ToUser < ActiveRecord::Migration
  def change
    add_column :users, :saldo, :integer, :default => 0
  end
end
