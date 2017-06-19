Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'episodes#index'
  resources :guests, only: [:index, :show]
  resources :episodes, only: [:index, :show]
  resources :appearances
  resources :sessions, only: [:new, :create]
  resources :users, only: [:new, :create]
  delete 'sessions' => 'sessions#destroy'
end
