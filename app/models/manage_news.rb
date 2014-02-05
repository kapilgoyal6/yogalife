class ManageNews < ActiveRecord::Base
	mount_uploader :news_image, PictureUploader
end
