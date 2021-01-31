class Image < ApplicationRecord
	belongs_to :shop, optional: true
  	mount_uploader :image_url, ImageUploader

  	if Rails.env.development?
	  storage :file
	elsif Rails.env.test?
	  storage :file
	else
	  storage :fog
	end
end
