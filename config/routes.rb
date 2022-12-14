Rails.application.routes.draw do
  root to: "homes#top"
  get '/home/about' => "homes#about",as: 'home_about'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :books, only: [:show, :index, :edit, :create, :update, :destroy]
  resources :users, only: [:show, :index, :edit, :update]

end
