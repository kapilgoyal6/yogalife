class CreateManageDirectories < ActiveRecord::Migration
  def change
    create_table :manage_directories do |t|
      t.string :sub_category
      t.string :country
      t.string :city
      t.string :business_name
      t.string :location
      t.string :phone_no
      t.string :email
      t.string :website
      t.text :desc

      t.timestamps
    end
  end
end
