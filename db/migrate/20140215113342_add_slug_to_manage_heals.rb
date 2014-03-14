class AddSlugToManageHeals < ActiveRecord::Migration
  def change
    add_column :manage_heals, :slug, :string
    add_index :manage_heals, :slug
  end
end
