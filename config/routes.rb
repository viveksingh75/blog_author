Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :blogs,only: [:index,:new,:create]
  resources :admins,only: [:index, :update, :edit]
  resources :super_admins,only: [:edit ,:update,:index]
  resources :comments
  root to:'regitrations#new'
  get 'login',to: 'sessions#new'
  post 'login',to:'sessions#create'
  get '/logout',to:'sessions#destroy'
  get 'signup',to: 'regitrations#new'
  post 'signup',to:'regitrations#create'
  get 'signup',to:'regitrations#destroy'
  patch 'comment',to:'admins#comment_update'
  # Defines the root path route ("/")
  # root "articles#index"
end
