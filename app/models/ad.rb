# frozen_string_literal: true
class Ad < ApplicationRecord
  mount_uploader :image, ImagesUploader # gem 'capybara :画像のアップロードを可能にする'
  validates :advertiser_id, presence: true
  validates :text, presence: true
  validates :price, presence: true
  validates :image, presence: true
  has_many :reports

end
