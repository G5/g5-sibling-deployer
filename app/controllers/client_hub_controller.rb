class ClientHubController < ApplicationController
  def index
  end

  def deploy
    ClientHub.async_deploy
    redirect_to root_url, notice: "Deploying client hub."
  end
end
