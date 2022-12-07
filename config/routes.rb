Rails.application.routes.draw do
  get  'top' => 'homes#top'
  get 'books' => 'books#index',as: 'books'
  get 'books/:id' =>'books#show',as: 'books_show'
  get 'books/:id/edit' =>'books#edit',as: 'books_edit'
  patch 'books/:id' =>'books#update',as: 'books_update'
  get 'books' => 'books#new'
  post 'books' => 'books#create',as: 'book'
  delete 'books/:id' =>'books#destroy',as: 'books_destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

