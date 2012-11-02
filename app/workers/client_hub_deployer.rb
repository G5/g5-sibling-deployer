class ClientHubDeployer
  @queue = :deployer

  def self.perform
    ClientHub.deploy
  end
end
