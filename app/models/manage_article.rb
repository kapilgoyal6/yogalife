class ManageArticle < ActiveRecord::Base

	mount_uploader :image, PictureUploader

	extend FriendlyId
  		friendly_id :title, use: :slugged
end
