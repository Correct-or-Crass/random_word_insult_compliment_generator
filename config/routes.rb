Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :insults, only: :index
      resources :compliments, only: :index
      resources :words, only: [:index, :create]
    end
  end
end