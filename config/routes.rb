Leadslist::Application.routes.draw do
  resources :investors


  resources :companies


  authenticated :user do
    root :to => 'home#index'
  end

  root :to => "home#index"
  devise_for :users
  resources :users
end

# get "/companies/_form"