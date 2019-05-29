class AdController < ApplicationController
  def index
    @ads=Ad.all
  end

  def show
  end

  def edit
  end

  def new
    @ad= Ad.new
  end

  def create
    @ad = Ad.new(ad_params)
    @ad.save
    redirect_to("/ad")
  end

  def edit
  end

  def destroy
  end

  private

  def ad_params
    params.require(:ad).permit(:name,:text,:advertiser_id,:image)
  end
end