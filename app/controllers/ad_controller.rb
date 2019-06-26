# frozen_string_literal: true
class AdController < ApplicationController
  def index
    @ads = Ad.all
  end

  def edit
    @ad = Ad.find(params[:id])
  end

  def new
    @ad = Ad.new
  end

  def create
    @ad = Ad.new(ad_params)
    if @ad.save # 広告登録成功時
      flash[:notice] = 'Ad registered!'
      redirect_to(ad_index_path)
    else
      render('ad/new')
    end
  end

  def update
    @ad = Ad.find(params[:id])
    if @ad.update_attributes(ad_params)
      flash[:notice] = 'Ad updated!'
      redirect_to(ad_index_path)
    else
      render('ad/edit')
    end
  end

  def destroy
    Ad.find(params[:id]).destroy
    flash[:notice] = 'Ad deleted!'
    redirect_to(ad_index_path)
  end

  def report
    # p "***********************"
    # p  params[:date_max]
    @reports = Report.select("
      ad_id,
      SUM(reports.imp) AS imp,
      SUM(reports.click) AS click,
      SUM(reports.cv) AS cv,
      SUM(reports.price) AS price
      ").group(:ad_id)

    # if  params[:date_max] &&  params[:date_min]
    #   p "YEAHHHHHHHHHHHHHHHHHHHHHHHHHHHHH"
    #   @reports = @reports.where(date: params[:date_min].to_date..params[:date_max].to_date)
    # end

    p "__________________"
    p @reports
  end

  def report_period

    @reports = Report.select("
      ad_id,
      SUM(reports.imp) AS imp,
      SUM(reports.click) AS click,
      SUM(reports.cv) AS cv,
      SUM(reports.price) AS price
      ").where(date: params[:date_min].to_date..params[:date_max].to_date).group(:ad_id)
        p "_________________________________"
        p @reports
    render('/ad/report')

    end

  private

  def ad_params # Adオブジェクト作成時にフォームから入力したパラメーターを渡す。
    params.require(:ad).permit(:price, :text, :image)
  end
end

