Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :restaurants, only: %i[new create index show] do
    resources :reviews, only: %i[create]
  end

  # root "restaurants#index"
end
