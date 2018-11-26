Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :specs
  # get "specs", to: "specs#index"
  # get "specs/:id", to: "specs#show"
  # get "specs/new", to: "specs#new"
  # post "specs", to: "specs#create"
  # get "specs/:id/edit", to: "specs#edit"
  # patch "specs/:id", to: "specs#update"
  # delete "specs/:id", to: "specs#destroy"

end
