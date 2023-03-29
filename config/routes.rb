Rails.application.routes.draw do
  # get 'todos/show'
  # get 'todos/new'
  # get 'todos/edit'
  # get 'categories/index'
  # get 'categories/show'
  # get 'categories/edit'
  # get 'categories/new'
  resources :todos, only:[:show, :edit, :update, :new, :create, :destroy]
  resources :categories
  get "category/:id/todo", to:"todos#new", as: "todo_on_category"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
