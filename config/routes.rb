# frozen_string_literal: true
Rails.application.routes.draw do
  resources :heros, except: [:index, :show]
  resources :fights, only: [:new, :create, :index]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'pages#index'
end
