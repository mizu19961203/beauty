class Stylist < ApplicationRecord
	belongs_to :user
	belongs_to :hairstyle
	belongs_to :basis
end
