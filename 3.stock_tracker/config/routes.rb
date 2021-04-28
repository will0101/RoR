Rails.application.routes.draw do
  resources :user_stocks, only: [:create]
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "pages#index"  
  get "my_portfolio", to: "users#my_portfolio"
  get "search_stock", to: "stocks#search"
end