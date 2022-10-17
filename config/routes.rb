Rails.application.routes.draw do
  resources :courses
  resources :students
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root 'home#index'
  resources :home, only: %i[index] do
    resources :students, only: %i[index show create delete] do
      resources :courses, only: %i[index show create delete]
    end
  end
end
