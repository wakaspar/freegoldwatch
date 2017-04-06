Rails.application.routes.draw do
  devise_for :admins, except: [:new], :path => "admin"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'devise/sessions#new', :path => "admin"
end
