Rails.application.routes.draw do


  namespace :api do
  namespace :v1 do
    get 'authors/index'
    end
  end

  namespace :api do
  namespace :v1 do
    get 'authors/show'
    end
  end

  namespace :api do
  namespace :v1 do
    get 'books/index'
    end
  end

  namespace :api do
  namespace :v1 do
    get 'books/show'
    end
  end

root 'dashboard#index'
  resources :studies
  resources :books
  resources :authors

  # api resources
  namespace :api do
    namespace :v1 do
      resources :studies
      resources :books
      resources :authors
    end
  end

end
