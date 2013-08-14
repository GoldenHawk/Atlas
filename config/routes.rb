Atlas::Application.routes.draw do
  resources :tests


  resources :bugs


  resources :projects


  get "log_in" => "sessions#new", :as => "log_in"
  get "log_out" => "sessions#destroy", :as => "log_out"


  get "sign_up" => "users#new", :as => "sign_up"
  root :to => "projects#index"
  resources :users
  resources :sessions

  
end
