Rails.application.routes.draw do
  get "huntxes/index"
  get "huntxes/show"
  root 'huntxes#index'
  get 'huntx/:id', to: 'huntxes#show', as: 'huntx'

  resources :huntxes
end
