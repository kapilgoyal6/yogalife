class CreateSubcategories < ActiveRecord::Migration
  def change
    create_table :subcategories do |t|
      t.string :cat_name
      t.string :sub_cat_name
      t.text :desc

      t.timestamps
    end
  end
end
