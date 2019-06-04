require 'rails_helper'

RSpec.describe AdApiController, type: :controller do

  describe "GET #view" do
    it "returns http success" do
      get :view
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #click" do
    it "returns http success" do
      get :click
      expect(response).to have_http_status(:success)
    end
  end

end
