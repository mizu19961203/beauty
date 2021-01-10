class Shop < ApplicationRecord
	belongs_to :user, optional: true
	has_many_attached :images

	geocoded_by :address
  	after_validation :geocode, if: :address_changed?, latitude: :latitude, longitude: :longitude
end
