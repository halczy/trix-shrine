Rails.application.routes.draw do

  root 'static_pages#home'

  get 'static_pages/home'
  get 'static_pages/setup_trix'
  resources :posts
  resources :images
end
