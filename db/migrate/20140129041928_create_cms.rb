class CreateCms < ActiveRecord::Migration
  def change
    create_table :cms do |t|
      t.string :page_title
      t.string :meta_keywords
      t.string :meta_desc
      t.text :page_content

      t.timestamps
    end
  end
end
