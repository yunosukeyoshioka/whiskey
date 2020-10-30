Rails.application.routes.draw do

	root to: 'whiskeys#index'
	resources :whiskeys, only: [:index, :show, :edit, :new, :create, :update, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
