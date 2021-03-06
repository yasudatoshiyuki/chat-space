Rails.application.routes.draw do
  get 'admin_users/index'

  devise_for :users
  root "groups#index"
  resources :users, only: [:index, :new, :create, :edit, :update, :destroy] do
    collection do
      get 'search'
    end
  end
  resources :groups, only: [:new, :create, :edit, :update] do
    resources :messages, only: [:index, :create]
    namespace :api do
      resources :messages, only: :index, defaults: { format: 'json' }
    end
  end
end
