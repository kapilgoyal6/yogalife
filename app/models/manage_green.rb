class ManageGreen < ActiveRecord::Base
	mount_uploader :image, PictureUploader
end
