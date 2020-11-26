Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :items, only: [:index, :show, :new, :create, :edit, :update, :destroy] do
    resources :offers, only: [:show, :new, :create, :edit]
    resources :comments, only: [:index, :new, :create]
  end
  resources :offers, only: [:index, :destroy, :update]

  # resources :items, only: [:index, :show, :new, :create, :edit, :update, :destroy] do

  # end

  resources :users, only: [:show, :edit, :update] do
    resources :reviews, only: [:index, :new, :create]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
