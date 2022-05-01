Rails.application.routes.draw do
  resources :profiles
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Devise Routes
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }

  resources :users, only: [:show] do
    member do
      get :edit_profile
      post :update_profile
    end
  end
  # Defines the root path route ("/")
  root "dashboard#index"
end
