Rails.application.routes.draw do
 namespace :api do
  get '/students' => 'students#index'
  post '/students' => 'students#create' 
  get '/students/:id' => 'students#show' 
  patch '/students/:id' => 'students#update'
  delete '/students/:id' => 'students#destroy' 


  get '/educations' => 'educations#index'
  post '/educations' => 'educations#create'
  get '/educations/#id' => 'educations#show'
  patch '/educations/#id' => 'educations#update'
  delete '/educations/#id' => 'educations#destroy'


 end
end
