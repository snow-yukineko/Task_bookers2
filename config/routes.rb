Rails.application.routes.draw do
  devise_for :users
  root to: 'home#top'
  resources :books, only: [:new, :index, :show, :edit, :destroy]
    patch 'books/:id' => 'books#update', as: 'update_book'
  resources :users, only: [:show, :index, :edit, :update]
  get 'home/about', as: 'about'
  post 'books' => 'books#create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
