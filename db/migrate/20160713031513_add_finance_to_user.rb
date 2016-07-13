class AddFinanceToUser < ActiveRecord::Migration
  def change
    add_column :users, :finance, :boolean, default: false
    add_column :users, :general, :boolean, default: false
  end
end
