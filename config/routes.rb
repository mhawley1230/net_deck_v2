Rails.application.routes.draw do
  root "tournaments#index"

  resources :tournaments, only: [:index, :show] do
    resources :decks, only: [:index, :show]
  end
end
