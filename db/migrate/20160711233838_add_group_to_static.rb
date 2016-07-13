class AddGroupToStatic < ActiveRecord::Migration
  def change
    add_column :statics, :group, :string
  end
end
