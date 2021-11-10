Rails.application.routes.draw do
  resources :restaurants do
    resources :reviews, only: [ :new, :create ]
    # get '/restaurants/:restaurant_id/reviews/new', to: "reviews#new"
    # post '/restaurants/:restaurant_id/reviews/', to: "reviews#create'
    collection do
      get :top
    end
    member do
      get :chef
    end
  end
  resources :reviews, only: [ :destroy ]

  # resources :flats do
  #   collection do
  #     get :top
  #   end
  # end

  # /flats/top
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
