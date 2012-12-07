require 'resque/server'

G5ClientHubDeployer::Application.routes.draw do
  post "deploy" => "client_hub#deploy", as: "deploy"
  post "webhooks/g5-configurator" => "webhooks#g5_configurator"

  mount Resque::Server, :at => "/resque"
  root to: "client_hub#index"
end
