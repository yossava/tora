class RemoveSlugFromStatic < ActiveRecord::Migration
  def change
    remove_column :statics, :slug
  end
end
