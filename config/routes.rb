Rails.application.routes.draw do
  resources :restaurants do
  #   collection do
  #     # get :index
  #   end
  # end

  # resources :restaurants do
  #   member do
  #     # get :show
  #   end
  # end

      resources :reviews, only: [ :new, :create ]
    end
    resources :reviews, only: [ :destroy ]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
