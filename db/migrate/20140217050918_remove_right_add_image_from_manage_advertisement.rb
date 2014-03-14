class RemoveRightAddImageFromManageAdvertisement < ActiveRecord::Migration
  def change
    remove_column :manage_advertisements, :right_add_image, :string;
  end
end
