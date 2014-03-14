class RemoveRightUrlFromManageAdvertisement < ActiveRecord::Migration
  def change
    remove_column :manage_advertisements, :right_url, :string;
  end
end
