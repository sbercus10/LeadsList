Leadslist::Application.routes.draw do
  resources :investors do
    resources :companies
  end


  resources :companies do 
    resources :investors
  end



  authenticated :user do
    root :to => 'home#index'
  end

  root :to => "home#index"
  devise_for :users
  resources :users
end

# get "/companies/_form"