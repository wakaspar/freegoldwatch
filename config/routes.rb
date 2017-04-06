Rails.application.routes.draw do

  devise_for :admins, controllers: { sessions: 'admins/sessions' }, path: 'admin', path_names: { sign_in: 'login', sign_out: 'logout'}

  root 'home#index'

end
