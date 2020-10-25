Rails.application.routes.draw do
  get 'mylists/new'
    root :to => 'pages#home'
    resources :users

    get '/login' => 'session#new'   #
    post '/login' => 'session#create'   #
    delete '/login' => 'session#destroy' # log out

    resources :mylists, :only => [:new, :create]
end
