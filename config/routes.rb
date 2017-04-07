Rails.application.routes.draw do

  resources :prints

  devise_for :admins, controllers: { sessions: 'admins/sessions' }, path: 'admin',
  path_names: { sign_in: '', sign_out: 'logout'}

  # get '/admin' => 'prints#index'

  # namespace :admin do
  #   root 'prints#index'
  # end


  root 'home#index'

end
