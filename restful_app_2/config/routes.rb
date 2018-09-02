Rails.application.routes.draw do
  namespace :api do
    get "/birds" => 'birds#index'
    post "/birds" => 'birds#create'
    get "/birds/:id" => 'birds#show'
    patch "/birds/:id" => 'birds#update'
    delete "/birds/:id" => 'birds#destroy'
  end
end
