Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get "/dashboard", to: "pages#dashboard"

  resources :races, only [:index, :show] do
    resources :review, only [:create, :destroy]
    resources :favorite_races, only [:create, :destroy]
    resources :bibs, only [:new, :create, :update, :edit, :destroy] do
      resources :orders, only [:create, :new, :show, :update, :index] do
        resources :messages, only [:create, :destroy]
      end
    end
  end


end
