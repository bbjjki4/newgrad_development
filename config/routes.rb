Rails.application.routes.draw do
  get '/view' => 'ad_api#view'
  get '/click' => 'ad_api#click'
  resources :ad
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
