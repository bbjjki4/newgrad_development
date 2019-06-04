
class AdApiController < ApplicationController
  def view
  	array=[]

    target_ids = Ad.pluck(:id).sample( params[:count].to_i)
    ads=Ad.find(target_ids)
    ads.each do |ad|
      array.push(
        { img_url: ad.image,
          body: ad.text,
          ad_id: ad.id }
      )
    end
    render json: array
  end

  def click
  end
end
