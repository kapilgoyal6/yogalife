class ManageAdvertisement < ActiveRecord::Base
	mount_uploader :right_add_image, PictureUploader
	mount_uploader :mid_add_image, PictureUploader
end
