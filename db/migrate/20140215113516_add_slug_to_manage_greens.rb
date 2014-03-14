class AddSlugToManageGreens < ActiveRecord::Migration
  def change
    add_column :manage_greens, :slug, :string
    add_index :manage_greens, :slug
  end
end
