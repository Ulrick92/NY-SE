Rails.application.routes.draw do
  devise_for :users
  get 'users/:id/edit', to: 'users#edit', as: :edit_user
  patch 'users/:id', to: 'users#update'
  get 'users/:id', to: 'users#show', as: :user
  root to: 'pages#home'
  get '/dashboard/seller', to: 'pages#dashboard_seller', as: :dashboard_seller
  get '/dashboard/buyer', to: 'pages#dashboard_buyer', as: :dashboard_buyer
  get '/dashboard/socks', to: 'pages#dashboard_socks', as: :dashboard_socks
  patch '/transactions/:id/validate', to: 'transactions#validates_user', as: :validates
  patch '/transactions/:id/refuse', to: 'transactions#refuses_user', as: :refuses

  resources :socks do
    resources :transactions, only: [ :new, :create, :show, :edit, :update ]
    # post 'comfirm', to: 'transactions#confirm', as: :confirm
  end


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
