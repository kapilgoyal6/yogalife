class CreateMagazines < ActiveRecord::Migration
  def change
    create_table :magazines do |t|
      t.string :title
      t.date :issue_date
      t.string :cover_image
      t.text :desc
      t.string :pages

      t.timestamps
    end
  end
end
