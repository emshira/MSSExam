Rails.application.routes.draw do

  root 'practitioners#index'
  resources :password_resets
  resources :patients do
  resources :questions
  end
  resources :practitioners
  resources :questions, except: [:new]
  resources :canvas_question_as

  get "/questions/new/:id" => "questions#new", :as => "new_question"

  # resources :practitioners do
  #   collection do
  #     get :login
  #   end
  # end

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  post '/landed' => 'practitioners#landed'
  get '/landing' => 'practitioners#landing'
  get '/signup' => 'practitioners#new'
  post '/create' => 'practitioners#create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
