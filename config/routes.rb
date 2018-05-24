Rails.application.routes.draw do
  get 'users/:id/edit', to: 'users#edit', as: :edit_user
  patch 'users/:id', to: 'users#update'
  get 'users/:id', to: 'users#show', as: :user
  devise_for :users
  root to: 'pages#home'
  get '/dashboard', to: 'pages#dashboard', as: :dashboard

  resources :socks do
    resources :transactions, only: [ :new, :create, :show ]
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
