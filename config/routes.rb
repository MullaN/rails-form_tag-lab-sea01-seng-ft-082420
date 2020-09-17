Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :students, only: :index

  get '/students/create', to: 'students#create', as: 'new_student'

  post '/students/new', to:'students#new' 

  get '/students/:id', to: 'students#show', as: 'student'  
end
