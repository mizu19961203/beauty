class Shop < ApplicationRecord
	belongs_to :user
	belongs_to :seet
	belongs_to :recommend
end
