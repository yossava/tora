class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.text :get
      t.text :post

      t.timestamps null: false
    end
  end
end
