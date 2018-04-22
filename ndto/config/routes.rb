Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'registrations' }

  resources :matchups
  resources :players
  resources :tournaments

  root 'pages#home'

  get 'pages/home'

  get 'pages/dashboard'

  get 'pages/tournament'
end