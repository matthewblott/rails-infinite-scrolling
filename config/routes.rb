Rails.application.routes.draw do
  resources :posts
  resources :posts2
  resources :posts3
  resources :posts4
  resources :posts5
  root "posts#index"
end
