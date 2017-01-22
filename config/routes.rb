Rails.application.routes.draw do
	devise_for :users, :controllers => { :omniauth_callbacks => "omniauth_callbacks" }
	root 'welcome#index'
	resources :products
	resources :orders, only: [:new, :create, :show]
end
