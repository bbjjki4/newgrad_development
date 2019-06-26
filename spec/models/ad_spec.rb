# frozen_string_literal: true
require 'rails_helper'

RSpec.describe Ad, type: :model do
  before do
    @ad = FactoryBot.create(:ad)
  end

  it 'without text should be invalid' do
    @ad.text = nil
    expect(@ad).not_to be_valid
  end

  it 'without image should be invalid' do
    @ad.image = nil
    expect(@ad).not_to be_valid
  end

  it 'without price should be invalid' do
    @ad.price = nil
    expect(@ad).not_to be_valid
  end
end
