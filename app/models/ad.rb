class Ad < ApplicationRecord
	mount_uploader :image, ImagesUploader
	validates :text ,{presence: true}
	validates :price ,{presence: true}
	validates :image ,{presence: true}
	validates :advertiser_id ,{presence: true}
	
end
