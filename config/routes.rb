Rails.application.routes.draw do
  root "tournaments#index"
  resources :tournaments
  devise_for :users, :controllers => { registrations: 'users/registrations' }
  
  # devise_scope :user do
  #   post 'users/new-registration' => 'users/registrations#create'
  #   post 'users/new-session' => 'users/sessions#create'
  # end

end
