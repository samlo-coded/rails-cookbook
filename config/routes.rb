Rails.application.routes.draw do
  get 'bookmarks/new'
  get 'bookmarks/create'
  get 'bookmarks/destory'
  get 'categories/index'
  get 'categories/show'
  get 'categories/new'
  get 'categories/create'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  resources :categories, only: %i[index show new create] do
    resources :bookmarks, only: %i[new create] do
      resources :recipes, only: %i[show]
    end
  end

  resources :bookmarks, only: %i[destroy]
end
