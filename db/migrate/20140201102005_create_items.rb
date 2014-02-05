class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :e_mail

      t.timestamps
    end
  end
end
