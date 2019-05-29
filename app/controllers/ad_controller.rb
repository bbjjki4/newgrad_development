class AdController < ApplicationController
  def index
    @ads=Ad.all
  end

  def show
  end

  def edit
    @ad =Ad.find( params[:id])
  end

  def new
    @ad= Ad.new
  end

  def create
    @ad = Ad.new(ad_params)
    if @ad.save
      flash[:notice] = "Ad registered!"
      redirect_to("/ad")
    else
      render("/ad/new")
    end
  end

  def update
    @ad = Ad.find(params[:id])
    if @ad.update_attributes(ad_params)
    flash[:notice] = "Ad updated!"
    redirect_to("/ad")
  else
    render("/ad/edit")
    end
  end

  def destroy
    Ad.find(params[:id]).destroy
    flash[:notice] = "Ad deleted!"
    redirect_to("/ad")
  end

  private

  def ad_params
    params.require(:ad).permit(:price,:text,:advertiser_id,:image)
  end
end