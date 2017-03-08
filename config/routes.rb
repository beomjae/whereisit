Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get 'items/index'

  get 'home/index'

  root 'home#index'

  resources :items
end
