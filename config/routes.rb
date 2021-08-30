Rails.application.routes.draw do
# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'pages#home'
  get 'about', to: 'pages#about'
  get 'events', to: 'pages#events'
  get 'confirmation', to: 'pages#confirmation'
  resources :orders, only: %i[index show new create destroy]
end
