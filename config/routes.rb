Rails.application.routes.draw do
  resources :kittens
  resources :owners

  root 'kittens#index'
  get 'owners/:id/adopt' => 'owners#adopt', as: 'adopt'
  get 'owners/:id/confirm_adopt' => 'owners#confirm_adopt', as: 'confirm_adopt'
end
