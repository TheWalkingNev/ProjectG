Rails.application.routes.draw do
  # static_pages
  root 'static_pages#index'
  get 'contact', to: 'static_pages#contact'
  get 'team', to: 'static_pages#team'
  # REST ou CRUD #bientôt un poll sur slack.. mais attention c'est limité à 100/mois il va falloir être vif début mars !!
  resources :gossips
  resources :users
end
