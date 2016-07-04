class DeleteSaldoFromUser < ActiveRecord::Migration
  def change
    remove_column :users, :saldo
  end
end
