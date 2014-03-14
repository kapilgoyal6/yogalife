class RemoveMidAddImageFromManageAdvertisement < ActiveRecord::Migration
  def change
    remove_column :manage_advertisements, :mid_add_image, :string;
  end
end
