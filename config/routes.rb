Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root 'articles#index'
  # Defines the root path route ("/")
  # root "articles#index"
  #Rotas em Helpers
  #get '/articles', to: 'articles#index'
  #get '/articles/:id', to: 'articles#show'
  resources :articles
end
