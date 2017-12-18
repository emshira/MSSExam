Rails.application.routes.draw do
  resources :patients
  resources :practitioners

  resources :questions

  resources :canvas_question_as
<<<<<<< HEAD
=======

>>>>>>> edb70cd1829c6fa899093d969cd20dd464d30425

  root 'practitioners#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
