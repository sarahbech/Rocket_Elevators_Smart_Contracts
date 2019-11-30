Rails.application.routes.draw do
  
  
  resources :interventions
  resources :elevators
  resources :columns
  resources :batteries
  resources :building_details
  resources :customers
  resources :leads
  resources :addresses
  resources :quote
  resources :leads
  resources :streamer

  devise_for :users

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  root 'index#index'

  get 'commercial' => 'commercialservices#commercial'
  get 'residential' => 'residentialservices#residential'
  get 'quote' => 'quote#quote'
  # post 'quote' => 'quote#quote'
  get 'interventions' =>'interventions#index'
  post 'interventions' =>'interventions#create'
  get 'confirmation' => 'index#confirmation'
  get 'confirmation' => 'index#confirmation'
  get 'sounds' => 'sounds#sounds'
  get 'contract' => 'contract#contract'
  # get '/leads' => 'leads#create'

  get '/building_json', to: 'buildings#building_json'
  get '/battery_json', to: 'batteries#battery_json'
  get '/column_json', to: 'columns#column_json'
  get '/elevator_json', to: 'elevators#elevator_json'

end
