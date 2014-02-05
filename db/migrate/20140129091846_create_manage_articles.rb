class CreateManageArticles < ActiveRecord::Migration
  def change
    create_table :manage_articles do |t|
      t.string :title
      t.string :cat
      t.string :sub_cat
      t.string :image
      t.string :created_by
      t.string :rel_article
      t.text :desc

      t.timestamps
    end
  end
end
