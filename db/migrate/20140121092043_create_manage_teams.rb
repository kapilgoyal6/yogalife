class CreateManageTeams < ActiveRecord::Migration
  def change
    create_table :manage_teams do |t|
      t.string :name
      t.string :image
      t.string :position
      t.text :desc

      t.timestamps
    end
  end
end
