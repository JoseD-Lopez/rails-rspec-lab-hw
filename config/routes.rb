Rails.application.routes.draw do
  
  get 'books', to: "books#index"

  get 'books/new', to: "books#new"

  post 'books', to: "books#create"

  get 'books/:id', to: "books#show"

  get 'books/:id/edit', to: "books#edit"

  put 'books/:id', to: "books#update"

  delete 'books/:id', to: "books#destroy"

  # BONUS
  # resources :books 

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
