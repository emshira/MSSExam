Rails.application.routes.draw do
  resources :practitioners

  root 'practitioners#index'
  get 'practioners/new' => 'practioners#new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
