Rails.application.routes.draw do
 namespace :api do
  get '/students' => 'student#index'
 end
end
