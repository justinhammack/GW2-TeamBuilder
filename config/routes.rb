GW2Teambuilder::Application.routes.draw do
  authenticated :user do
    root :to => 'home#index'
  end
  root :to => "home#index"
  # devise_for :users
  devise_for :users, :controllers => { :registrations => "registrations" } 
  resources :users, :only => :show

  # if Rails.env == 'production'
  
  #else
  #  devise_for :users
  #end
end
