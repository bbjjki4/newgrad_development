require 'rails_helper'

RSpec.describe AdController, type: :controller do
	before do
		@ad =FactoryGirl.create(:ad)
	end
	describe "POST #create" do
		subject { post :create,@ad.attribute}
	end

end
