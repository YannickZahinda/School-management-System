Rails.application.routes.draw do
  resources :comments
  devise_for :users
  resources :students
  root 'home#index'
  # get '/users/sign_out', action: :destroy, controller: 'users'
  get '/users', action: :index, controller: 'users'
  get '/dashboard', action: :index, controller: 'dashboard'
  get 'teachers', action: :index, controller: 'teachers'

  resources :home, only: %i[index] do
    resources :students, only: %i[index show create delete]
  end
end
