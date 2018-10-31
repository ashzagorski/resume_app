Rails.application.routes.draw do
 namespace :api do
  get '/students' => 'students#index'
  post '/students' => 'students#create' 
  get '/students/:id' => 'students#show' 
  patch '/students/:id' => 'students#update'
<<<<<<< HEAD
  delete '/students/:id' => 'students#destroy'

  get '/capstones' => 'capstones#index'
  post '/capstones' => 'capstones#create'
  get '/capstones/#id' => 'capstones#show'
  patch '/capstones/#id' => 'capstones#update'
  delete '/capstones/#id' => 'capstones#destroy'
=======
  delete '/students/:id' => 'students#destroy' 


  get '/educations' => 'educations#index'
  post '/educations' => 'educations#create'
  get '/educations/#id' => 'educations#show'
  patch '/educations/#id' => 'educations#update'
  delete '/educations/#id' => 'educations#destroy'


>>>>>>> adb4b6cde2fc7fc97fc82e2abc0cdc0587133fa1
 end
end
