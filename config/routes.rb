Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  get "specs", to: "specs#index"
  get "specs/:id", to: "specs#show"
  get "specs/new", to: "specs#new"
  post "specs", to: "specs#create"
  get "specs/:id/edit", to: "specs#edit"
  patch "specs/:id", to: "specs#update"
  delete "specs/:id", to: "specs#destroy"
  #get 'tags/:tag', to: 'articles#index', as: :tag


end
