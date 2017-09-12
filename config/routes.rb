Rails.application.routes.draw do
  root 'feedbacks#index'
  resources :feedbacks, only: :index
  devise_for :users
  namespace :api do
    namespace :v1 do
      resources :feedbacks, only: :create
    end
  end
end
