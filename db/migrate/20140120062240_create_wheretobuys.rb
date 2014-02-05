class CreateWheretobuys < ActiveRecord::Migration
  def change
    create_table :wheretobuys do |t|
      t.string :address
      t.string :country
      t.string :city
      t.string :w_days
      t.string :w_hours
      t.string :phone_no
      t.string :fax_no
      t.string :email_id

      t.timestamps
    end
  end
end
