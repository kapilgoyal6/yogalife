class CreateManagePoses < ActiveRecord::Migration
  def change
    create_table :manage_poses do |t|
      t.string :title
      t.string :sub_category
      t.string :author
      t.string :pose_image
      t.text :desc

      t.timestamps
    end
  end
end
