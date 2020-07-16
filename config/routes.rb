Rails.application.routes.draw do
  devise_for :users
  root to: "notes#index"
  resources :users
  resources :notes, only: [:index, :new, :create, :show, :edit, :update, :destroy]
end
