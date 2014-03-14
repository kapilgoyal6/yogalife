class AddTypeToAttachment < ActiveRecord::Migration
  def change
    add_column :attachments, :attachable_type, :integer
  end
end
