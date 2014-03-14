class ManageAdvertisement < ActiveRecord::Base
	mount_uploader :top_image, PictureUploader
	mount_uploader :mid_image, PictureUploader
	mount_uploader :bottom_image, PictureUploader
end
