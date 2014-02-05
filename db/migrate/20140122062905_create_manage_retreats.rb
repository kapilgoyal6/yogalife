class CreateManageRetreats < ActiveRecord::Migration
  def change
    create_table :manage_retreats do |t|
      t.string :title
      t.string :sub_category
      t.string :image
      t.string :created_by
      t.text :desc

      t.timestamps
    end
  end
end
