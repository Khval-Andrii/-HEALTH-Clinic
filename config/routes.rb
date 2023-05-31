# frozen_string_literal: true

Rails.application.routes.draw do
  root 'main#index'
  get 'main/index'
  devise_for :doctors
  devise_for :users

  resources :categories
  resources :appointment do
    resources :recommandation
  end
end
