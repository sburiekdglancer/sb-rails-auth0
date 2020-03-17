Rails.application.routes.draw do

  root 'pages#home'

  get 'auth/auth0/callback' => 'auth0#callback'
  get 'auth/failure' => 'auth0#failure'

  # API namespace
  #----------------------------------------------------------------------  
  namespace :api, defaults: { format: 'json' } do
    namespace :v1 do
      resources :apidocs, only: [:index]

      post '/auth/login',     to: 'auth#login'
      post '/auth/logout',    to: 'auth#logout'
      post '/auth/register',  to: 'auth#register'

      resources :users, only: [:update, :destroy]
      
    end
  end

  # Dashboard namespace
  #----------------------------------------------------------------------  
  get  'dashboard', to: 'dashboard#index'

end
