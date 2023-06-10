Rails.application.routes.draw do
  mount Rswag::Ui::Engine => '/api-docs'
  mount Rswag::Api::Engine => '/api-docs'
  
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  resources :profiles, only: %i[index]
  resources :users, only: %i[index]
  
  resources :main, only: %i[index]
  resources :about, only: %i[index]
  resources :coins, only: %i[index show]
  resources :investments, only: %i[index create destroy]
  resources :investmentsapi, only: %i[create index]
  resources :usersapi, only: %i[index]
  delete '/investmentsapi', to: 'investments#destroy'
  
  root to: 'main#index'
end
