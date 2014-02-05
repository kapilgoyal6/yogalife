class Magazine < ActiveRecord::Base
	mount_uploader :cover_image, PictureUploader
	mount_uploader :pages, PictureUploader
end
