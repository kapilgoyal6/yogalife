class AddMidUrlToManageAdvertisement < ActiveRecord::Migration
  def change
    add_column :manage_advertisements, :mid_url, :string;
  end
end
