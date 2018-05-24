Rails.application.routes.draw do
  devise_for :users
  get 'users/:id/edit', to: 'users#edit', as: :edit_user
  patch 'users/:id', to: 'users#update'
  get 'users/:id', to: 'users#show', as: :user
  root to: 'pages#home'
  get '/dashboard', to: 'pages#dashboard', as: :dashboard

  resources :socks do
    resources :transactions, only: [ :new, :create, :show, :edit, :update ]
    # post 'comfirm', to: 'transactions#confirm', as: :confirm
  end


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
