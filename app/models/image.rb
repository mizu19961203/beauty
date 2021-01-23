class Image < ApplicationRecord
	belongs_to :shop, optional: true
  	mount_uploader :image_url, ImageUploader
end
