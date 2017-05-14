Rails.application.routes.draw do
  root "tournaments#index"

  resources :tournaments, only: [:index, :show]
end
