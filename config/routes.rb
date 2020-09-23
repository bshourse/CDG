Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'signup' => 'users#new'
  resources :users
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/login' => 'sessions#destroy', as: :user_logout
  get '/profile' => 'users#show', as: :profile_dir
  get '/profile/:id/edit' => 'users#edit', as: :user_edit
  patch '/profile/:id' => 'users#update'
  get '/dashboard' => 'days#index', as: :dashboard_dir
end
