class Shop < ApplicationRecord
	belongs_to :user
	belongs_to :seet
	belongs_to :recommend
	has_many_attached :image
end
