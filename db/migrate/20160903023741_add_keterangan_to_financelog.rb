class AddKeteranganToFinancelog < ActiveRecord::Migration
  def change
    add_column :financelogs, :keterangan, :text
  end
end
