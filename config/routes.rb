Rails.application.routes.draw do
  resources :images, only: [:index, :create, :destroy]
  resources :plays,  only: [:index, :create]
  root 'images#index'
end
