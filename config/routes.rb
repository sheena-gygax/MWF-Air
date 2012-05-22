Air::Application.routes.draw do
  
  root to: 'flights#index'
  
  get '/help' => 'pages#help', :as => :help
  get '/mockup'  =>  'pages#home', :as  => :mockup
  
end
