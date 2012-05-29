Air::Application.routes.draw do

  root to: 'flights#index'
  
  resources :users
  
  get '/signin', :to => 'sessions#new'
  get '/signout', :to  => 'sessions#destroy', as: :signout
  post 'sessions/create'
  
  get '/help' => 'pages#help', :as => :help
  get '/mockup'  =>  'pages#home', :as  => :mockup
  
  get '/reservations/new', :to  =>  'reservations#new', as: :new_reservation
  get '/reservations/create', :to  => 'reservations#create', as: :reservations
  get '/reservations/show', :to  => 'reservations#show', as: :reservation
  get '/reservations/destroy', :to  =>  'reservations#destroy', as: :cancel_reservation
  
end
