class Shop < ApplicationRecord
	belongs_to :user, optional: true
	belongs_to :seet
	belongs_to :recommend
	has_many_attached :image
	geocoded_by :address
  	after_validation :geocode, if: :address_changed?
end
