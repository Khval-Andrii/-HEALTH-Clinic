# frozen_string_literal: true

Rails.application.routes.draw do
  # get 'recommandations/index'
  # get 'recommandations/show'
  # get 'recommandations/new'
  # get 'recommandations/edit'
  # get 'recommandations/create'
  # get 'recommandations/update'
  # get 'recommandations/destroy'
  # get 'categories/index'
  # get 'categories/show'
  # get 'categories/new'
  # get 'categories/edit'
  # get 'categories/create'
  # get 'categories/update'
  # get 'categories/destroy'
  # get 'appointments/index'
  # get 'appointments/show'
  # get 'appointments/new'
  # get 'appointments/edit'
  # get 'appointments/create'
  # get 'appointments/update'
  # get 'appointments/destroy'
  root 'main#index'
  get 'main/index'
  devise_for :doctors
  devise_for :users

  resources :categories
  resources :appointment do
    resources :recommandation
  end
end
