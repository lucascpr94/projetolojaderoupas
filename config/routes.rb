Rails.application.routes.draw do
  get "/produtos/new" => "produtos#new"
  get "/produtos/:id/remove" => "produtos#destroy"
  post "/produtos" => "produtos#create"
  root 'produtos#index'
end
