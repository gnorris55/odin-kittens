Rails.application.routes.draw do
  resources :kittens
  resources :owners

  root 'kittens#index'
  get 'owners/:id/adopt' => 'owners#adopt', as: 'adopt'
  get 'owners/:id/confirm_adopt' => 'owners#confirm_adopt', as: 'confirm_adopt'
  get 'owners/:id/send_stats' => 'owners#send_stats', as: 'send_stats'
end
