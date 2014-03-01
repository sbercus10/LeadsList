Leadslist::Application.routes.draw do
  resources :investors


  resources :companies

get "home/company_profile"
get "home/investors"

  authenticated :user do
    root :to => 'home#index'
  end

  root :to => "home#index"
  devise_for :users
  resources :users
end


# get "/companies/_form"