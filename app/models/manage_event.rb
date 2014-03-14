class ManageEvent < ActiveRecord::Base
	mount_uploader :event_image, PictureUploader
	has_event_calendar

	has_many :event_images, :as => :attachable
	accepts_nested_attributes_for :event_images

	def should_generate_new_friendly_id?
  		slug.blank? || name_changed?
	end

	extend FriendlyId
  		friendly_id :name, use: :slugged
end
