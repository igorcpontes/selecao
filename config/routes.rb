Rails.application.routes.draw do
  devise_for :users
  resources :curriculos
  resources :principal

  root "principal#index"
end
