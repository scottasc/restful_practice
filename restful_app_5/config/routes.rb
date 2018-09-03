Rails.application.routes.draw do
  namespace :api do 
    get "/languages" => 'languages#index'
    post "/languages" => 'languages#create'
    get "/languages/:id" => 'languages#show'
    patch "/languages/:id" => 'languages#update'
    delete "/languages/:id" => 'languages#destroy'
  end
end
