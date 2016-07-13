class CreateJoinTable < ActiveRecord::Migration
  def change
    create_table :categories_subcategories do |t|
      t.belongs_to :category
      t.belongs_to :subcategory
    end
  end
end
