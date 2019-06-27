# frozen_string_literal: true
Rails.application.routes.draw do
  get '/view' => 'ad_api#view_make_report'
  get '/click' => 'ad_api#click_make_report'
  resources :ad
end
