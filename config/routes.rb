Rails.application.routes.draw do

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
    devise_for :users
    resources :curriculos do
        resources :entrevistas, except: [:index]
    end
    resources :principal

    root "principal#index"
end
