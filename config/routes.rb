Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "static_pages#root"

  namespace :api, default: { format: :json } do
    resource :session, only: [:create, :destroy]
    resources :users, only: [:create]
    resources :artists, only: [:create, :update, :show]
    resources :albums, only: [:index, :show, :create, :update]
    resources :songs, only: [:create, :update, :show]
    resources :user_collection_albums, only: [:create, :destroy, :index]
    resources :user_follows, only: [:create, :index]
  end

end
