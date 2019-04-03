Rails.application.routes.draw do

 root 'students#welcome'

 get '/students', to: "students#index"

end
