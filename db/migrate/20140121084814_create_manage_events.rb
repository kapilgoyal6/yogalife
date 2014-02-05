class CreateManageEvents < ActiveRecord::Migration
  def change
    create_table :manage_events do |t|
      t.string :title
      t.string :category
      t.string :author
      t.date :event_date
      t.string :event_image
      t.text :desc

      t.timestamps
    end
  end
end
