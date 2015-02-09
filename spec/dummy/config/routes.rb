Rails.application.routes.draw do

  mount Waggle::Engine => "/waggle"

  root to: 'display#index'

  resources :fun_models

  resources :collection do

    resources :items
  end
end
