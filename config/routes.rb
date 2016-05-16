Rails.application.routes.draw do
  get 'authors/index'

  get 'authors/show'

  get 'authors/new'

  get 'authors/edit'

  get 'books/index'

  get 'books/show'

  get 'books/new'

  get 'books/edit'

  get 'libraries/index'

  get 'libraries/show'

  get 'libraries/new'

  get 'libraries/edit'

  namespace :api do
    namespace :v1 do
      resources :libraries
      resources :books
      resources :authors
    end
  end

end
