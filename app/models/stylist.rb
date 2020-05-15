class Stylist < ApplicationRecord
	belongs_to :user
	belongs_to :base
	belongs_to :hairstyle
	has_many_attached :image
end
