Rails.application.routes.draw do

  devise_for :users, :controllers => { registrations: 'registrations' }

  resources :tournaments
  
  root 'tournaments#index'

end
