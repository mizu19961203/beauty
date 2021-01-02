class Stylist < ApplicationRecord
	belongs_to :user, optional: true
end

