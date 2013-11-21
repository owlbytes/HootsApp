HootsApp::Application.routes.draw do
  
  devise_for :users, controllers: {:omniauth_callbacks => "omniauth_callbacks"}

  devise_scope :user do
    # get '/users' => 'users#index'
    resources :users, :only => [:index] do
      member do
        get :my_posts
        get :favourites
        put :assign_favourite_user
      end
    end
  end



  root :to => "slideshow#index"

  resources :posts do 
    member do
      put :vote
      put :assign_favourite_post
    end
    resources :comments
  end
  resources :searches, only: [:create]

  # resources :messages, only: [:new, :create]
end
