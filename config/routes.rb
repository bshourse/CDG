Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'users#new', as: :root
  resources :users
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/login' => 'sessions#destroy', as: :user_logout
  get '/profile' => 'users#show', as: :profile_dir
  get '/profile/:id/edit' => 'users#edit', as: :user_edit
  patch '/profile/:id' => 'users#update'
  get '/dashboard' => 'days#index', as: :dashboard_dir
  get '/dashboard/:id' => 'days#show', as: :day
  resources :order_items
  get 'cart' => 'cart#show'
  resources :dishes
end
