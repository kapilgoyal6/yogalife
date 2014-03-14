class AddAttachableTypeToEventImages < ActiveRecord::Migration
  def change
    add_column :event_images, :attachable_type, :string
  end
end
