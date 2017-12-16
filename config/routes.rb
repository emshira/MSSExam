Rails.application.routes.draw do
<<<<<<< HEAD
=======
  resources :practitioners

  resources :questions 

>>>>>>> 17ce330e9a18ae76714e85a453dc0093fe508126
  root 'practitioners#index'

  resources :practitioners do
    collection do
      get :login
    end
  end

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  get '/signup' => 'practitioners#new'
  post '/practitioners' => 'practitioners#create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
