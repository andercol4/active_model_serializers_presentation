Rails.application.routes.draw do
  get 'studies/index'

  get 'studies/show'

  get 'studies/new'

  get 'studies/edit'

  resources :libraries
  resources :books
  resources :authors
  
  # api resources
  namespace :api do
    namespace :v1 do
      resources :libraries
      resources :books
      resources :authors
    end
  end

end
