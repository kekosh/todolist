Rails.application.routes.draw do
  root to: "categories#index"
  resources :todos, only:[:new, :create, :destroy]
  resources :categories
  get "category/:id/todo", to:"todos#new", as: "todo_on_category"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
