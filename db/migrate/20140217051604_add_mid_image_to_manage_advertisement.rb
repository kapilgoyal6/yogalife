class AddMidImageToManageAdvertisement < ActiveRecord::Migration
  def change
    add_column :manage_advertisements, :mid_image, :string;
  end
end
