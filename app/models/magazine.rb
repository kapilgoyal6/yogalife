class Magazine < ActiveRecord::Base

		
	mount_uploader :cover_image, PictureUploader
	mount_uploader :pages, PictureUploader

	has_many :attachments, :as => :attachable
	accepts_nested_attributes_for :attachments
end
