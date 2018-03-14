Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/search', to: 'searches#index'
  post '/search', to: 'searches#search'
  get '/search/:id', to: 'searches#index'
  get '/events/:id', to: 'searches#show'

resources :users


root to: 'home#index'


post '/login', to: 'sessions#create'

get '/new', to: 'sessions#new'
  
post '/logout', to: 'sessions#destroy'


end