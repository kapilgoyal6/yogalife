class AddTopUrlToManageAdvertisement < ActiveRecord::Migration
  def change
    add_column :manage_advertisements, :top_url, :string;
  end
end
