Rails.application.routes.draw do
	root to: 'whiskeys#index'
	resources :whiskeys, only: [:index, :show, :edit, :new, :create, :update, :destroy, :whiskey_comments] do
		member do 
      get :whiskey_comments
    end
		resources :post_comments, only: [:create, :destroy]
	end	
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
