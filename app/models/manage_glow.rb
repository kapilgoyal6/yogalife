class ManageGlow < ActiveRecord::Base
	mount_uploader :image, PictureUploader
end
