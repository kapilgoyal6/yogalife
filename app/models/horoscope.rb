class Horoscope < ActiveRecord::Base
	mount_uploader :logo, PictureUploader
	mount_uploader :background, PictureUploader

	# mount_uploader :desc, CkeditorPictureUploader, :mount_on => :data_file_name

	validates :title, presence: true
	validates :subtitle, presence: true
	# validates_uniqueness_of :title
end
