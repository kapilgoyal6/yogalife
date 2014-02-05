class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.string :category
      t.string :author
      t.datetime :start_at
      t.datetime :end_at
      t.string :image
      t.text :desc

      t.timestamps
    end
  end
end
