Rails.application.routes.draw do
  root to: "homes#top"
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :books, only: [:show, :index, :edit]
  resources :users, only: [:show, :index, :edit]

end