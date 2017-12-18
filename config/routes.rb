Rails.application.routes.draw do
  resources :patients
  resources :practitioners

  resources :questions

  resources :canvas_question_as

  root 'practitioners#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
