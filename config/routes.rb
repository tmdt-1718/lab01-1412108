Rails.application.routes.draw do
  get 'home/index'

  resources :albums, only: [:index]

  resources :articles

  resources :photo
  post '/photo/new' => 'photo#new_post'

  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
