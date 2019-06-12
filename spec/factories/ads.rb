# frozen_string_literal: true
FactoryBot.define do
  factory :ad do
    advertiser_id { 1 }
    image { Rack::Test::UploadedFile.new(File.join(Rails.root, 'spec/fixture/image.jpg')) }
    price { 222 }
    text { 'Test Text' }
  end
end
