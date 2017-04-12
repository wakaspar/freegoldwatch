Rails.application.routes.draw do

  resources :prints

  # Route for PinIndex, interacts with PinballMap.com's API
  get '/pins', controller: :pins, action: :index
  post '/pins', controller: :pins, action: :create
  delete '/pins', controller: :pins, action: :destroy

  # Route for Elasticsearch
  get '/search', to: 'pins#search', as: 'search'

  # Routes ONLY used for updating Print Order Status
  put '/prints/:id/bump_up', controller: :prints, action: :next_stage, as: 'bump_up'
  put '/prints/:id/bump_down', controller: :prints, action: :last_stage, as: 'bump_down'


  devise_for :admins, controllers: { sessions: 'admins/sessions' }, path: 'admin',
  path_names: { sign_in: '', sign_out: 'logout'}



  root 'home#index'

end
