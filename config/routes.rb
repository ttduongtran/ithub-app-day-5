Rails.application.routes.draw do
  devise_for :managers
  
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations',
    passwords: 'users/passwords'
  }

  devise_scope :user do
    get 'sign_in', to: 'users/sessions#new'
  end
  resources :categories
  resources :posts
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "posts#index"

  # scope "/admin" do
  #   resources :dashboard, only: [:index]
  # end
end
