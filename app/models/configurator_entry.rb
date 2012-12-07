class ConfiguratorEntry < ActiveRecord::Base
  FEED_URL = "http://g5-configurator.herokuapp.com/instructions"
  TARGET_URL = ENV["UID"] || "http://g5-client-hub-deployer.herokuapp.com"

  attr_accessible :targets_me, :uid

  validates :uid, uniqueness: true

  class << self
    def feed(path_or_url=FEED_URL)
      G5HentryConsumer.parse(path_or_url)
    end

    def async_consume_feed
      Resque.enqueue(ConfiguratorEntryConsumer)
    end

    def consume_feed(path_or_url=FEED_URL)
      feed(path_or_url).entries.map do |hentry|
        consume_entry(hentry)
      end.compact
    end

    def instruction_targets_me?(hentry)
      if hentry.nil? || hentry.is_a?(String)
        hentry == TARGET_URL
      else
        hentry.content.first.targets.include? TARGET_URL
      end
    end

    def consume_entry(hentry)
      entry = find_or_initialize_from_hentry(hentry)
      entry.targets_me = instruction_targets_me?(hentry)
      entry.save
      entry
    end

    def find_or_initialize_from_hentry(hentry)
      find_or_initialize_by_uid(hentry.bookmark)
    end
  end # class << self

  after_save :client_hub_async_deploy, if: :targets_me?

  private

  def client_hub_async_deploy
    ClientHub.async_deploy
  end
end
