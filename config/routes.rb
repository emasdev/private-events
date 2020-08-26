Rails.application.routes.draw do
	resources :users, only:[:show, :new, :create]
	get 'log_in', to: 'users#log_in'

 # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
