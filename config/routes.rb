Cyberjaya::Application.routes.draw do
  devise_for :users, :path_prefix => 'd'
  resources :users

  resources :organizations

  root :to => 'home#index'
end
