Rails.application.routes.draw do
  get  'top' => 'homes#top'
  get 'books' => 'books#index',as: 'books'
  get 'books/:id' =>'books#show',as: 'show'
  get 'edit' =>'books#edit',as: 'edit'
  get 'books' => 'books#new'
  post 'books' => 'books#create',as: 'book'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

