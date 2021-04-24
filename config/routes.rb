Rails.application.routes.draw do
  namespace :api do
    resources :users, only: %i[create]
    resource :session, only: %i[create destroy]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end