class AddSlugToManageNews < ActiveRecord::Migration
  def change
    add_column :manage_news, :slug, :string
    add_index :manage_news, :slug
  end
end
