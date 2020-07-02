Rails.application.routes.draw do
  devise_for :users
  root to: 'posts#index'
  resources :users, only: [:edit, :update, :show]
  resources :posts do
    collection do
      get 'search'
    end
    resources :comments, only: :create
    resource :likes, only: [:create, :destroy]
  end
end
