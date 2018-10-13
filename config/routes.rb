Rails.application.routes.draw do
  resources :assignments
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :teachers, only: [:show]
  resources :courses, only: [:index, :show]
  resources :users, only: [:create, :index, :show]
  post '/login', to: 'auth#create'
  get '/profile', to: 'users#profile'
end
