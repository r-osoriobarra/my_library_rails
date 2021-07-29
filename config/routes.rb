Rails.application.routes.draw do
  get 'books', to: 'books#index'
  root 'books#index'

  get 'books/new', to: 'books#new'
  post 'books', to: 'books#create'
  
  get 'books/:id/edit', to: 'books#edit', as: 'edit_book'
  patch 'books/:id', to: 'books#update'

  get 'books/:id', to: 'books#show', as: 'book'
end
