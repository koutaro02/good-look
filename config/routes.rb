Rails.application.routes.draw do
  devise_for :users
  root to: "plans#index"
  resources :spots, only: [:new, :create]
end
