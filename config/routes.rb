require 'resque/server'

G5ClientHubDeployer::Application.routes.draw do
  post "deploy" => "client_hub#deploy", as: "deploy"
  root to: "client_hub#index"
  mount Resque::Server, :at => "/resque"
end
