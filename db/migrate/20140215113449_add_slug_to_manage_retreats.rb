class AddSlugToManageRetreats < ActiveRecord::Migration
  def change
    add_column :manage_retreats, :slug, :string
    add_index :manage_retreats, :slug
  end
end
