class AddStartAtToManageEvent < ActiveRecord::Migration
  def change
    add_column :manage_events, :start_at, :datetime
  end
end
