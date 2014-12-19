Rails.application.routes.draw do

  mount Waggle::Engine => "/waggle"

  root to: 'display#index'
end
