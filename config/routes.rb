Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  post '/record/new' => 'records#new'
  post '/record/get' => 'records#get'
end
