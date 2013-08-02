Sources::Application.routes.draw do

resources :tags, only: [:new, :create]
  root to: 'tags#index'
end
