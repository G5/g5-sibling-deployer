source "https://rubygems.org"

gem "rails", "3.2.13"
gem "jquery-rails"

gem "bootstrap-sass", "~> 2.1.0.1"
gem "quiet_assets", "~> 1.0.1"

gem "foreman", "~> 0.60.2"

gem "g5_sibling_deployer_engine", "~> 0.2"

group :assets do
  gem "sass-rails", "~> 3.2.3"
  gem "coffee-rails", "~> 3.2.1"
  gem "uglifier", ">= 1.0.3"
end

group :development, :test do
  gem "dotenv-rails", "~> 0.9.0"
  gem "rails-default-database", "~> 1.0.6"
  gem "sqlite3"
  gem "simplecov", "~> 0.7.1", require: false
  gem "rspec-rails", "~> 2.11.4"
  gem "guard-rspec", "~> 2.1.0"
  gem "spork"
  gem "rb-fsevent", "~> 0.9.2"
  gem "fabrication", "~> 2.5.0"
  gem "faker", "~> 1.1.2"
end

gem "codeclimate-test-reporter", group: :test, require: nil

group :production do
  gem "pg"
  gem "unicorn"
  gem "newrelic_rpm"
  gem "honeybadger"
end
