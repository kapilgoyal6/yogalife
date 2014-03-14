class AddSlugToManagePoses < ActiveRecord::Migration
  def change
    add_column :manage_poses, :slug, :string
    add_index :manage_poses, :slug
  end
end
