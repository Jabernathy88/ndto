Rails.application.routes.draw do

  resources :matchups
  resources :players
  devise_for :users, :controllers => { registrations: 'registrations' }

  resources :tournaments
  
  root 'tournaments#index'

end
