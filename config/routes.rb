Rails.application.routes.draw do
  resources :about, only: %i[index]
  resources :contact, only: %i[index]
  resources :planet do
    collection do
      get "alphabetized"
      get "newest"
      get "hightolow"
      get "lowtohigh"
    end
  end
  resources :star do
    collection do
      get "alphabetized"
      get "newest"
      get "hightolow"
      get "lowtohigh"
    end
  end
  resources :asteroid do
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
