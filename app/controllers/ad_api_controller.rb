
class AdApiController < ApplicationController
  def view
    array=[]

    target_ids = Ad.pluck(:id).sample( params[:count].to_i)
    ads=Ad.find(target_ids)
    ads.each do |ad|

      repo = Repo.find_by(ad_id: ad.id, adspot_id:  params[:adspot_id])
      unless repo
        repo = Repo.new(ad_id: ad.id,adspot_id:  params[:adspot_id])
      end

      repo.imp += 1
      repo.save
      p repo.imp

      array.push(
        { img_url: ad.image,
          body: ad.text,
          ad_id: ad.id }
      )
    end
    render json: array
  end

  def click

    if repo = Repo.find_by(ad_id:  params[:ad_id], adspot_id:  params[:adspot_id])

      repo.click += 1
      repo.totalcost +=  Ad.find( params[:ad_id]).price
      repo.save

      p repo.click
      p repo.totalcost

    else
      render status: 500, json: { status: 500, message: 'Ad was not existed! ' }
    end
  end


  private
  def count_p

  end


end
