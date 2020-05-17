class Stylist < ApplicationRecord
	belongs_to :user, optional: true
	belongs_to :base
	belongs_to :hairstyle
	has_many_attached :image
end
