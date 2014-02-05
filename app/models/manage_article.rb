class ManageArticle < ActiveRecord::Base
	mount_uploader :image, PictureUploader
end
