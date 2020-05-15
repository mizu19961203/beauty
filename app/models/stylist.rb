class Stylist < ApplicationRecord
	belongs_to :user
	belongs_to :base
	belongs_to :hairstyle
end
