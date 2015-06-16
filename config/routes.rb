require 'resque/server'

G5SiblingDeployer::Application.routes.draw do
  mount G5Ops::Engine => '/g5_ops'
  mount Resque::Server, :at => "/resque"
  root to: "siblings#index"
end
