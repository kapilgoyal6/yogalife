class AddBottomUrlToManageAdvertisement < ActiveRecord::Migration
  def change
    add_column :manage_advertisements, :bottom_url, :string;
  end
end
