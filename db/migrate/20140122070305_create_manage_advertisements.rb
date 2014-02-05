class CreateManageAdvertisements < ActiveRecord::Migration
  def change
    create_table :manage_advertisements do |t|
      t.string :right_add_image
      t.string :right_url
      t.string :mid_add_image
      t.string :mid_url

      t.timestamps
    end
  end
end
