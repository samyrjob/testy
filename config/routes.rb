Rails.application.routes.draw do
  devise_for :companies
  devise_for :students
  root to: "pages#home"

  resources :offers, only: %i[index show]


  namespace :company do # permet de faire sous catégories de user
    resources :offers, only: %i[new create]
    resources :applications, only: [] do
      member do
        get :accept
        get :decline
      end
    end
  end

  namespace :student do # permet de faire sous catégories de user
    resources :offers, only: [] do
      resources :applications, only: %i[new create]
    end
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
