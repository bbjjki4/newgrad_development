class Ad < ApplicationRecord
	mount_uploader :image, ImagesUploader
end
