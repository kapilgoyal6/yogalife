class AddSlugToManageGlows < ActiveRecord::Migration
  def change
    add_column :manage_glows, :slug, :string
    add_index :manage_glows, :slug
  end
end
