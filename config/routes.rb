Rails.application.routes.draw do
  get 'asteroid/index'
  get 'asteroid/show'
  get 'asteroid/alphabetized'
  get 'asteroid/newest'
  get 'asteroid/hightolow'
  get 'asteroid/lowtohigh'
  get 'star/index'
  get 'star/show'
  get 'star/alphabetized'
  get 'star/newest'
  get 'star/hightolow'
  get 'star/lowtohigh'
  get 'planet/index'
  get 'planet/show'
  get 'planet/alphabetized'
  get 'planet/newest'
  get 'planet/hightolow'
  get 'planet/lowtohigh'
  root to: "home#index"
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
