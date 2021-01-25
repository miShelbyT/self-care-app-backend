Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  namespace :api do
    namespace :v1 do
      resources :activities, only: :index
      resources :user_activities, only: [:index, :create, :show, :update, :destroy]
      resources :users, only: [:show, :create, :index, :update, :destroy]
      resources :journal_entries, only: [:create, :index, :show, :update, :destroy]
      post '/users/login', to: 'users#login'
    end
  end
  
end
