Rails.application.routes.draw do

  resources :images
  root 'static_pages#home'

  get 'static_pages/home'

  resources :posts
end
