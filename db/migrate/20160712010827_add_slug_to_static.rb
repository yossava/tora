class AddSlugToStatic < ActiveRecord::Migration
  def change
    add_column :statics, :slug, :string
    add_index :statics, :slug, unique: true
  end
end
