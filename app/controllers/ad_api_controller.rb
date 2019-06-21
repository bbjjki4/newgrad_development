
# frozen_string_literal: true
class AdApiController < ApplicationController
  def view
    array = []
    reports = []

    target_ids = Ad.pluck(:id).sample(params[:count].to_i)
    ads = Ad.find(target_ids)
    ads.each do |ad|
      report =  Report.find_by(ad_id: ad.id, adspot_id: params[:adspot_id])
      unless report
        report = Report.new(ad_id: ad.id, adspot_id: params[:adspot_id])
      end

      report.imp += 1
      reports.push(report)

      array.push(
        img_url: ad.image,
        body: ad.text,
        ad_id: ad.id
      )
    end
    Report.import reports, on_duplicate_key_update: [:imp]
    render json: array
  end

  def click
    report = Report.find_by(ad_id: params[:ad_id], adspot_id: params[:adspot_id])

    report.click += 1
    report.totalcost += Ad.find(params[:ad_id]).price
    report.save
  end

end
