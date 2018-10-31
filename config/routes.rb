Rails.application.routes.draw do
 namespace :api do
  get '/students' => 'students#index'
  post '/students' => 'students#create' 
  get '/students/:id' => 'students#show' 
  patch '/students/:id' => 'students#update'
  delete '/students/:id' => 'students#destroy'

  get '/capstones' => 'capstones#index'
  post '/capstones' => 'capstones#create'
  get '/capstones/#id' => 'capstones#show'
  patch '/capstones/#id' => 'capstones#update'
  delete '/capstones/#id' => 'capstones#destroy'
 end
end
