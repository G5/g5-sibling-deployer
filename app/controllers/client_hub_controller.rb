class ClientHubController < ApplicationController
  def index
    @configurator_entries = ConfiguratorEntry.order("created_at DESC").all
  end

  def deploy
    ClientHub.async_deploy
    redirect_to root_url, notice: "Deploying client hub."
  end
end
