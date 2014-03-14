class AddBottomImageToManageAdvertisement < ActiveRecord::Migration
  def change
    add_column :manage_advertisements, :bottom_image, :string;
  end
end
