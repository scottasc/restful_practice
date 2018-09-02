Rails.application.routes.draw do
  namespace :api do
    get "/witches" => 'witches#index'
    post "/witches" => 'witches#create'
    get "/witches/:id" => 'witches#show'
    patch "/witches/:id" => 'witches#update'
    delete "/witches/:id" => 'witches#destroy'
  end
end
