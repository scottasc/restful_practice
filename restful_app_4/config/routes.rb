Rails.application.routes.draw do
    namespace :api do
    get "/lizards" => 'lizards#index'
    post "/lizards" => 'lizards#create'
    get "lizards/:id" => 'lizards#show'
    patch "lizards/:id" => 'lizards#update'
    delete "lizards/:id" => 'lizards#destroy'
  end
end
