Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :adverts do
    resources :messages, only: [:create]
  end

  resources :messages, only: [ :edit, :update, :destroy ]
end
