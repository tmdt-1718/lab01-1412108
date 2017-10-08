Rails.application.routes.draw do
	get 'home/index'

	resources :albums, only: [:index]

	resources :articles

	resources :photo
	post '/photo/new' => 'photo#new_photo'

	get '/about' => 'about#index'

	get '/blog' => 'post#index'

	constraints Clearance::Constraints::SignedIn.new do
		resources :post
		post '/post/new' => 'post#new_post'
	end
	# authenticate :user do
	# 	resources :post, only: [:new, :create, :edit, :update, :destroy]
	# end

	root 'home#index'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
