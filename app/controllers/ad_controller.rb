# frozen_string_literal: true
require 'date'
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
      flash[:notice] = '広告を登録しました！'
      redirect_to(ad_index_path)
    else
      render('new')
    end
  end

  def update
    @ad = Ad.find(params[:id])
    if @ad.update_attributes(ad_params)
      flash[:notice] = '広告を更新しました！'
      redirect_to(ad_index_path)
    else
      render('edit')
    end
  end

  def destroy
    Ad.find(params[:id]).destroy
    flash[:notice] = '広告を削除しました！'
    redirect_to(ad_index_path)
  end

  def report #report.htmlに全レポートを出力
    @reports = Report.select("
      ad_id,
      SUM(reports.imp) AS imp,
      SUM(reports.click) AS click,
      SUM(reports.cv) AS cv,
      SUM(reports.price) AS price
      ").group(:ad_id)
  end

  def report_period #report.htmlに一定期間のレポートを出力
    @reports = Report.select("
      ad_id,
      SUM(reports.imp) AS imp,
      SUM(reports.click) AS click,
      SUM(reports.cv) AS cv,
      SUM(reports.price) AS price
      ").where(date: Date.parse(params[:date_min])..Date.parse(params[:date_max])).group(:ad_id)
    render('/ad/report')
    end

  private

  def ad_params # Adオブジェクト作成時にフォームから入力したパラメーターを渡す。
    params.require(:ad).permit(:price, :text, :image)
  end
end
