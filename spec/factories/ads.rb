# frozen_string_literal: true
FactoryBot.define do
  factory :ad do
    image { Rack::Test::UploadedFile.new(File.join(Rails.root, 'spec/fixture/image.jpg')) }
    price { 1 }
    text { 'Test Text' }
  end
end
