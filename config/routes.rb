Rails.application.routes.draw do
  root 'posts#home'
  
  get 'users/new'

  get 'sessions/new'

  #Post
  #creat
  resources :users
  resources :sessions, only: [:new, :create, :destroy]
  resources :trips, only: [:index, :new, :create, :destroy] 
  
  
  
  get '/posts/new' => 'posts#new'
  post '/posts/create' => 'posts#create'
  get '/pictures/index' => 'pictures#index'
  
  #sign up
  get 'login' => 'sessions#new' 
  post 'login' => 'sessions#create' 
  get 'logout' => 'sessions#destroy'
 # 기본 제공이아니라 특이함

  
  
  
  #travel 
  get '/trips/index' => 'trips#index'
  get '/trips/new' => 'trips#new'
  get '/trips/create' => 'trips#create'
 
  get '/trips/show/:trip_id' => 'trips#show'
  get '/trips/destroy/:trip_id' => 'trips#destroy'

  #read 
 
  get '/posts/index' => 'posts#index'
  get '/posts/show/:post_id' => 'posts#show'
 #get '/posts/show2' => 'posts#show2'

  #get story
  get '/stories/newstory' => 'stories#newstory'
  
  #update
  get '/posts/edit/:post_id' => 'posts#edit'
  post '/posts/update/:post_id' => 'posts#update'
  
  #delete
  post '/posts/destory/:post_id' => 'posts#destory'



 #comments
  #create
  post '/posts/show/:post_id/comments/create' => 'comments#create'
  #destroy
  post '/posts/show/:post_id/comments/destroy/:comment_id' => 'comments#destroy'

  #comments
  #create
  post '/trips/show/:trip_id/comments/create' => 'comments#create'
  #destroy
  post '/trips/show/:trip_id/comments/destroy/:comment_id' => 'comments#destroy'

end
