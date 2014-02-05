class CreateManageNews < ActiveRecord::Migration
  def change
    create_table :manage_news do |t|
      t.string :title
      t.string :created_by
      t.string :news_image
      t.text :desc

      t.timestamps
    end
  end
end
