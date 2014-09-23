class AddColumnsToYogas < ActiveRecord::Migration
  def change
    add_column :yogas, :provider, :string
    add_column :yogas, :uid, :string
  end
end
