class RemoveDescriptionFromAttachments < ActiveRecord::Migration
  def change
    remove_column :attachments, :description, :text
  end
end
