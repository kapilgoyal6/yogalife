class CreateHoroscopes < ActiveRecord::Migration
  def change
    create_table :horoscopes do |t|
      t.string :title
      t.string :subtitle
      t.date :start_date
      t.date :end_date
      t.string :logo
      t.string :background
      t.text :desc

      t.timestamps
    end
  end
end
