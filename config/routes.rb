Rails.application.routes.draw do
  devise_for :users
  root "pages#home"

  namespace :admin do
    root "pages#index"
    resources :users
  end
end
