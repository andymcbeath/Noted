Rails.application.routes.draw do
  get "/scores" => "scores#index"
  post "/scores" => "scores#create"
  get "/scores/:id" => "scores#show"
  patch "/scores/:id" => "scores#update"
  delete "/scores/:id" => "scores#destroy"

  post "/users" => "users#create"
  post "/sessions" => "sessions#create"
end
