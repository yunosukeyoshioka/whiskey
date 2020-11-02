Rails.application.routes.draw do
	root to: 'whiskeys#index'
	resources :whiskeys, only: [:index, :show, :edit, :new, :create, :update, :destroy] do
  	resources :reviews, only: [:index, :create] 
	end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
