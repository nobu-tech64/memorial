Rails.application.routes.draw do
  root to: "notes#index"
  resources :notes, only: [:index, :new, :create, :show, :edit, :update, :destroy]
end
