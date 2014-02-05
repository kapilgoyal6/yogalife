class CreateManageGreens < ActiveRecord::Migration
  def change
    create_table :manage_greens do |t|
      t.string :title
      t.string :sub_category
      t.string :image
      t.string :created_by
      t.text :desc

      t.timestamps
    end
  end
end
