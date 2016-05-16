Rails.application.routes.draw do

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
