Rails.application.routes.draw do
  devise_for :users
  root to: 'posts#index'
  resources :users, only: [:edit, :update]
  resources :posts do
    collection do
      get 'search'
    end
    resources :comments, only: :create
    resources :likes, only: :create
  end
end
