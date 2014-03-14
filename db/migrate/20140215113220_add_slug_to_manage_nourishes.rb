class AddSlugToManageNourishes < ActiveRecord::Migration
  def change
    add_column :manage_nourishes, :slug, :string
    add_index :manage_nourishes, :slug
  end
end
