Rails.application.routes.draw do
  resources :patients
  resources :practitioners

  resources :questions
<<<<<<< HEAD

  resources :canvas_question_as
=======
>>>>>>> 798155b4c0bfb552c1df7b372265cef12deb9999

  root 'practitioners#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
