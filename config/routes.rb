Rails.application.routes.draw do
  get 'main/index'
  devise_for :doctors
  devise_for :users

  resourses :categories
  resourses :appointment do
    resourses :recommandation
  end

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root "main#index"
end
