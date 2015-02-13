Rails.application.routes.draw do
  resources :curriculos

  root "curriculos#index"
end
