Rails.application.routes.draw do

  devise_for  :users
  resources   :posts do
    resources :comments
  end

  namespace :api do
    namespace :v1 do
        resource :users
        post "/login", to: "users#create"
        get "/test", to: "users#test"
        get "/auto_login", to: "users#auto_login"

    end
  end

  namespace :api do
    namespace :v1 do
        resource :posts
        post "/posts", to: "posts#index"
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
