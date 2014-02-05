class ManageEvent < ActiveRecord::Base
	mount_uploader :event_image, PictureUploader
	has_event_calendar
end
