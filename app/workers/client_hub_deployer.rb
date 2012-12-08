class ClientHubDeployer
  extend HerokuResqueAutoscaler if Rails.env.production?
  @queue = :deployer

  def self.perform
    ClientHub.deploy
  end
end
