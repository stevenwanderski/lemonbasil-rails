Rails.application.routes.draw do
  devise_for :users
  root "pages#home"

  get "how-it-works", to: "pages#how_it_works", as: "how_it_works"
  get "about", to: "pages#about", as: "about"

  resources :contacts, only: [:new, :create]

  namespace :admin do
    root "pages#index"
    resources :pages
    resources :users
  end
end
