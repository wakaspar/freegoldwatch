Rails.application.routes.draw do

  resources :prints

  get '/pins', controller: :pins, action: :index

  # Routes ONLY used for updating Print Order Status
  put '/prints/:id/bump_up', controller: :prints, action: :next_stage, as: 'bump_up'
  put '/prints/:id/bump_down', controller: :prints, action: :last_stage, as: 'bump_down'


  devise_for :admins, controllers: { sessions: 'admins/sessions' }, path: 'admin',
  path_names: { sign_in: '', sign_out: 'logout'}

  root 'home#index'

end
