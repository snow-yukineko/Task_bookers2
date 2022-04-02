Rails.application.routes.draw do
  devise_for :users
  root to: 'homes#top'
  resources :books, only: [:new, :index, :show]
  resources :users, only: [:show, :edit]
  get 'homes/about'
  post 'books' => 'books#create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
