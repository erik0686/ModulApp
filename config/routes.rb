Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :students
  resources :exams
  resources :student_exams
  root 'home#index'

end
