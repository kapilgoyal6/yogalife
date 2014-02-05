class ManageTeam < ActiveRecord::Base
	mount_uploader :image, PictureUploader
end
