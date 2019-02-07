Rails.application.routes.draw do
  # static_pages
  root 'static_pages#index'
  get 'contact', to: 'static_pages#contact'
  get 'team', to: 'static_pages#team'
  get 'login', to: 'static_pages#login'
  get 'welcome/:id', to: 'static_pages#welcome', as: 'welcome'
  # REST ou CRUD #bientôt un poll sur slack.. mais attention c'est limité à 100/mois il va falloir être vif début mars !!
  resources :gossips
  resources :users
  resources :cities, only: [:index, :show]
  resources :comments, only: [:create, :update, :destroy]
  resources :sessions, only: [:new, :create, :destroy]
end
