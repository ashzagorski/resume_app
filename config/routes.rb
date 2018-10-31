Rails.application.routes.draw do
 namespace :api do
  get '/students' => 'student#index'
  post '/students' => 'students#create' 


  get '/educations' => 'educations#index'
  post '/educations' => 'educations#create'
  get '/educations/#id' => 'educations#show'
  patch '/educations/#id' => 'educations#update'
  delete '/educations/#id' => 'educations#destroy'

 end
end
