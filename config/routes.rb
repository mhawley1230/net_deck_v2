Rails.application.routes.draw do
  mount JasmineRails::Engine => '/specs' if defined?(JasmineRails)
  devise_for :users
  root "tournaments#index"

  resources :tournaments, only: [:index, :show] do
    resources :decks, only: [:index, :show]
  end

  resources :decks, only: [:index, :show] do
    resources :cards, only: [:index, :show]
  end

  resources :cards, only: [:show]
end
