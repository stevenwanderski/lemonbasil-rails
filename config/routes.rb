Rails.application.routes.draw do
  devise_for :users
  root "pages#home"

  get "how-it-works", to: "pages#how_it_works", as: "how_it_works"
  get "about", to: "pages#about", as: "about"
  get "menus", to: "pages#menus", as: "menus"

  resources :contacts, only: [:new, :create]

  namespace :admin do
    root "pages#index"
    resources :pages
    resources :users
    resources :categories do
      resources :menu_items
    end
    post "update-weights", to: "weights#update", as: "weights_update"
  end
end
