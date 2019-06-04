
class AdApiController < ApplicationController
  def view
  	array=[]

    target_ids = Ad.pluck(:id).sample( params[:count].to_i)
    ads=Ad.find(target_ids)
    ads.each do |ad|

      if ad.imp ==nil
        ad.imp = 1
      else
        ad.imp += 1
      end
      ad.save

      puts ad.imp

      array.push(
        { img_url: ad.image,
          body: ad.text,
          ad_id: ad.id }
      )
    end
    render json: array
  end

  def click
    ad=Ad.find( params[:ad_id])
    
    if ad.click ==nil
      ad.click = 1
    else
      ad.click += 1
    end
    ad.save
    
    ad.price =  params[:price]
    ad.save
    puts 'ad saved!'

  end
end
