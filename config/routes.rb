Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  namespace 'api' do 
    namespace 'v1' do
      resources :posts
      resources :users, only: [:index, :create]
      post "/login", to: "user#login"
      get "/auto_login", to: "users#auto_login"
      #resources :categories 
    end
  end


end
