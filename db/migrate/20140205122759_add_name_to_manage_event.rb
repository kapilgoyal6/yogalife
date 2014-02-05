class AddNameToManageEvent < ActiveRecord::Migration
  def change
    add_column :manage_events, :name, :string
  end
end
