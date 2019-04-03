Rails.application.routes.draw do

 root 'students#index'

 get '/students', to: "students#index"
 get '/students/new', to: "students#new"
 get '/students/:id', to: "students#show"
 get '/students/:id/edit', to: "students#edit"
 put '/students/:id/' , to: "students#update"
 delete '/students/:id/' , to: "students#destroy"
 post '/students', to: "students#create"
end
