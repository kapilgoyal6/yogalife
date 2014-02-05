class ManagePose < ActiveRecord::Base
	mount_uploader :pose_image, PictureUploader
end
