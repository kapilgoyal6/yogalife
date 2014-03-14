class Attachment < ActiveRecord::Base

	mount_uploader :file, PictureUploader
	
  belongs_to :attachable, :polymorphic => true; 
  belongs_to :magazine

  
end
