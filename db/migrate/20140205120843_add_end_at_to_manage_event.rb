class AddEndAtToManageEvent < ActiveRecord::Migration
  def change
    add_column :manage_events, :end_at, :datetime
  end
end
