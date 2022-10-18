Rails.application.routes.draw do
  devise_for :users
  resources :students
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root 'home#index'
  get '/users', action: :index, controller: 'users'
  get '/dashboard', action: :index, controller: 'dashboard'
  get 'teachers', action: :index, controller: 'teachers'
  resources :home, only: %i[index] do
    # resources :teachers, only: %i[index]
    resources :students, only: %i[index show create delete]
  end
end
