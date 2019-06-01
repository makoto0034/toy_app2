Rails.application.routes.draw do
  get "/user" =>"users#top"
  get "/user/new" =>"users#new"
  get "/user/:id" =>"users#show"
  get "/user/:id/edit" =>"users#edit"
  post"/user/:id/update" =>"users#update"
  post "/user/create" =>"users#create"
  get "/user/:id/destroy" => "users#destroy"
  get "/new" => "home#new"
  get "/:id" => "home#show"
  get "/:id/edit" =>"home#edit"
  post"/:id/update"=>"home#update"
  post "/create" => "home#create"
  get "/" => "home#top"
  get "/:id/destroy" =>"home#destroy"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
