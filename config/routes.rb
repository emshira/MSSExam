Rails.application.routes.draw do
  resources :practitioners
  resources :patients

  resources :questions

  resources :canvas_question_as

  resources :canvas_question_bs

  root 'practitioners#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
