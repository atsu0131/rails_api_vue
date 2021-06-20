Rails.application.routes.draw do
  root 'home#index'
  namespace :api do
    resources :users, only: %i[create show]
    resource :session, only: %i[create destroy]
    resources :microposts, only: %i[index create show update destroy]

    namespace :me do
      resource :account, only: %i[update]
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
