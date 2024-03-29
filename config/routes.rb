Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :adverts do
    resources :messages, only: [:create]
  end

  resources :messages, only: [ :edit, :update, :destroy ]

  resources :users, only: [:show] do
    member do
      get :user_adverts
    end
  end

  resources :conversations, only: [ :new, :create, :index, :show, :destroy]
  resources :conversation_user, only: [:new, :create, :destroy]
  resources :user_texts, only: [:create]
end
