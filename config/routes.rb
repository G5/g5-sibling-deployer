require 'resque/server'

G5ClientHubDeployer::Application.routes.draw do
  post "deploy" => "client_hub#deploy", as: "deploy"

  mount Resque::Server, :at => "/resque"
  root to: "siblings#index"
end
