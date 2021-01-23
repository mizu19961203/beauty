class Shop < ApplicationRecord
	belongs_to :user, optional: true

	# belongs_to :seet

	has_many :images, dependent: :destroy
  	accepts_nested_attributes_for :images, allow_destroy: true

	geocoded_by :address
  	after_validation :geocode, if: :address_changed?, latitude: :latitude, longitude: :longitude
end
