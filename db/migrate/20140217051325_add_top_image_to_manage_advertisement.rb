class AddTopImageToManageAdvertisement < ActiveRecord::Migration
  def change
    add_column :manage_advertisements, :top_image, :string;
  end
end
