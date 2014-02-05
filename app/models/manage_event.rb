class ManageEvent < ActiveRecord::Base
	mount_uploader :event_image, PictureUploader
end
