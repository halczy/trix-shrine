Rails.application.routes.draw do

  root 'static_pages#home'

  get 'static_pages/home'
  get 'static_pages/setup_trix'
  get 'static_pages/setup_shrine'
  resources :posts
  resources :images
end
