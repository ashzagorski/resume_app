Rails.application.routes.draw do
 namespace :api do
  get '/students' => 'student#index'
  post '/students' => 'students#create' 

  get '/capstones' => 'capstones#index'
  post '/capstones' => 'capstones#create'
  get '/capstones/#id' => 'capstones#show'
  patch '/capstones/#id' => 'capstones#update'
  delete '/capstones/#id' => 'capstones#destroy'
 end
end
