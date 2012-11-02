class ClientHub
  class << self
    def async_deploy
      Resque.enqueue(ClientHubDeployer)
    end

    def deploy
      GithubHerokuDeployer.deploy
    end
  end

  def async_deploy
    self.async_deploy
  end

  def deploy
    self.deploy
  end
end
