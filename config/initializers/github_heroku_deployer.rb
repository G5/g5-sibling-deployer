GithubHerokuDeployer.configure do |config|
  config.github_repo     = ENV["BUDDY_GITHUB_REPO"]
  config.heroku_api_key  = ENV["HEROKU_API_KEY"]
  config.heroku_app_name = ENV["BUDDY_HEROKU_APP_NAME"]
  config.heroku_repo     = ENV["BUDDY_HEROKU_REPO"]
  config.heroku_username = ENV["HEROKU_USERNAME"]
  config.id_rsa          = ENV["ID_RSA"]
  config.logger          = Rails.logger
  config.repo_dir        = File.join(Rails.root, "tmp", "repos")
end
