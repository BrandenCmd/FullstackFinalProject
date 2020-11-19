Rails.application.routes.draw do
  resources :planet, only: %i[index show]
  resources :star, only: %i[index show]
  resources :asteroid, only: %i[index show]
  root to: "home#index"
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
end
