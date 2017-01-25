Rails.application.routes.draw do
	devise_for :users, :controllers => { :omniauth_callbacks => "omniauth_callbacks" }
	root 'products#index'
	resources :products
	resources :orders, only: [:new, :create, :show]
	get '/dashboard' => 'welcome#dashboard'
end
