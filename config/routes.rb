Rails.application.routes.draw do
 namespace :api do
  get '/students' => 'student#index'
  post '/students' => 'students#create' 
 end
end
