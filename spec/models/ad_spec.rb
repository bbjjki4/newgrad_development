require 'rails_helper'

RSpec.describe Ad, type: :model do
  before do
  	@ad = FactoryGirl.create(:ad)
  end
end
