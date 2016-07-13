class AddMetaToStatic < ActiveRecord::Migration
  def change
    add_column :statics, :meta_description, :text
    add_column :statics, :meta_keyword, :string
    add_column :statics, :slug, :string
  end
end
