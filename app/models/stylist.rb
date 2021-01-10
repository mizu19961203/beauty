class Stylist < ApplicationRecord
	belongs_to :user, optional: true
	belongs_to :base
	has_many_attached :images
end

