class RemoveMidUrlFromManageAdvertisement < ActiveRecord::Migration
  def change
    remove_column :manage_advertisements, :mid_url, :string;
  end
end
