Rails.application.routes.draw do

  devise_for :admins, controllers: { sessions: 'admins/sessions' }, path: 'admin',
  path_names: { sign_in: '', sign_out: 'logout'}

  resources :prints

  # Route for PinIndex, interacts with PinballMap.com's API
  get '/pins', controller: :pins, action: :index
  post '/pins', controller: :pins, action: :create
  delete '/pins', controller: :pins, action: :destroy

  # Routes ONLY used for updating Print Order Status
  put '/prints/:id/bump_up', controller: :prints, action: :next_stage, as: 'bump_up'
  put '/prints/:id/bump_down', controller: :prints, action: :last_stage, as: 'bump_down'

  root 'home#index'

  # 404 Catch-all
  match "*path", to: "application#page_not_found", via: :all

end
