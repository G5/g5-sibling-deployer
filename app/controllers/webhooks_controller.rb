class WebhooksController < ApplicationController
  def g5_configurator
    ConfiguratorEntry.async_consume_feed
    render json: {}, status: :ok
  end
end
