Rails.application.routes.draw do
  resources :meals
  resources :orders
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


root to: 'orders#index'
get '/auth/:provider/callback', to: 'sessions#create'
delete '/logout', to: 'sessions#destroy'
end
