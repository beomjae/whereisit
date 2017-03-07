Rails.application.routes.draw do
  get 'items/index'

  get 'home/index'

  root 'home#index'

  resources :items
end
