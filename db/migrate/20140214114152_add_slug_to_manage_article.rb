class AddSlugToManageArticle < ActiveRecord::Migration
  def change
    add_column :manage_articles, :slug, :string
    add_index :manage_articles, :slug
  end
end
