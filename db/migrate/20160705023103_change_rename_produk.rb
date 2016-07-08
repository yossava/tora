class ChangeRenameProduk < ActiveRecord::Migration
  def change
    remove_column :produks, :att
    add_column :produks, :special, :boolean, :default => false
    add_column :produks, :recommended, :boolean, :default => false
    add_column :produks, :top, :boolean, :default => false
  end
end
