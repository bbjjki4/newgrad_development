require 'rails_helper'

RSpec.describe Ad, type: :model do

  before do
  	@ad = FactoryGirl.create(:ad)
  end

  it "without text should be invalid" do
  	@ad.text = nil
  	expect(@ad).not_to be_valid
  end

  it "without advertiser_id should be invalid" do
  	@ad.advertiser_id = nil
  	expect(@ad).not_to be_valid
  end

  it "without image should be invalid" do
  	@ad.image = nil
  	expect(@ad).not_to be_valid
  end

  it "without price should be invalid" do
  	@ad.price = nil
  	expect(@ad).not_to be_valid
  end
end
