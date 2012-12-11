require 'resque/server'

G5ClientHubDeployer::Application.routes.draw do
  mount Resque::Server, :at => "/resque"
  root to: "siblings#index"
end
