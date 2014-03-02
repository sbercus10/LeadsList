Leadslist::Application.routes.draw do
  resources :investors do
    resources :companies
  end


  resources :companies do 
    resources :investors
  end


get "home/company_profile"
get "home/investors"

  authenticated :user do
    root :to => 'companies#new'
  end

  root :to => "home#index"
  devise_for :users
  resources :users
end


# get "/companies/_form"