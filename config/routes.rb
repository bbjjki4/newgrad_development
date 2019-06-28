# frozen_string_literal: true
Rails.application.routes.draw do
  get '/view' => 'ad_api#get_ads'
  get '/click' => 'ad_api#update_clicks'
  resources :ad
  get '/report' => 'ad#report'
  get '/report_period' => 'ad#report_period'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
