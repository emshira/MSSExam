Rails.application.routes.draw do
  root 'practitioners#index'

  resources :practitioners
  resources :questions


  # resources :practitioners do
  #   collection do
  #     get :login
  #   end
  # end

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  get '/landing' => 'practitioners#landing'
  get '/signup' => 'practitioners#new'
  post '/create' => 'practitioners#create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
