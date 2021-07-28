Rails.application.routes.draw do
  get 'books/new', to: 'books#new'
  post 'books', to: 'books#create'
end
