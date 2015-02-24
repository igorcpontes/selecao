Rails.application.routes.draw do

    devise_for :users
    resources :curriculos do
        resources :entrevistas, except: [:show, :index]
    end
    resources :principal

    root "principal#index"
end
