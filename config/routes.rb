Rails.application.routes.draw do
  get 'books', to: 'books#index'
  root 'books#index'

  get 'books/new', to: 'books#new'
  post 'books', to: 'books#create'
  
  

  get 'books/:id', to: 'books#show', as: 'book'
end
