Rails.application.routes.draw do
  devise_for :users
  resources :curriculos

  root "curriculos#index"
end
