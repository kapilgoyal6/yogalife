class AddSlugToManageEvent < ActiveRecord::Migration
  def change
    add_column :manage_events, :slug, :string
    add_index :manage_events, :slug
  end
end
