HootsApp::Application.routes.draw do
  
  devise_for :users, controllers: {:omniauth_callbacks => "omniauth_callbacks"}

  devise_scope :user do
    # get '/users' => 'users#index'
    resources :users, :only => [:index]
  end

  root :to => "posts#index"

  resources :posts do 
    member do
      put :vote
    end
    resources :comments
  end

end
