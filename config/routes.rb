Rails.application.routes.draw do
  resources :practitioners do
    collection do
      get :login
    end
  end

  root 'practitioners#index'
  get '/new' => 'practitioner#new'
  post '/practitioner' => 'practitioner#create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
