Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'registrations' }
  root 'stores#index'
  resources :stores
  namespace :api, defaults: { format: :json } do
    resources :treks, only: [:index, :new, :create, :show, :update, :destroy]
    resource :session, only: [:show]
  end
end
