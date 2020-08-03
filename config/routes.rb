Rails.application.routes.draw do
  resources :kittens
  resources :owners
  root 'kittens#index'
end
