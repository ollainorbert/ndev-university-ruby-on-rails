Rails.application.routes.draw do 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#index'
  
  # Auth
  devise_for :users
  devise_for :admins, :skip => [:sign_up]
  # Auth END
  
  # Supply
  authenticated :admin do
	resources :products, only: [:new, :create, :edit, :update, :destroy]
  end
  resources :products, only: [:index, :show]
  # Supply END
end
