Rails.application.routes.draw do
  resources :planet, only: %i[index show alphabetized newest hightolow lowtohigh]
  resources :star, only: %i[index show alphabetized newest hightolow lowtohigh]
  resources :asteroid, only: %i[index show alphabetized newest hightolow lowtohigh]
  root to: "home#index"
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
end
