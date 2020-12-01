Rails.application.routes.draw do
  devise_for :users
  resources :about, only: %i[index]
  resources :contact, only: %i[index]
  resources :cart, only: %i[create destroy]
  resources :planets do
    collection do
      get "alphabetized"
      get "newest"
      get "hightolow"
      get "lowtohigh"
    end
  end
  resources :stars do
    collection do
      get "alphabetized"
      get "newest"
      get "hightolow"
      get "lowtohigh"
    end
  end
  resources :asteroids do
    collection do
      get "alphabetized"
      get "newest"
      get "hightolow"
      get "lowtohigh"
    end
  end
  root to: "home#index"
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
end
