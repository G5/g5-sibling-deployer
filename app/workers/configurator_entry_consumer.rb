class ConfiguratorEntryConsumer
  @queue = :consumer

  def self.perform
    puts "Start consuming configurator's feed..."
    ConfiguratorEntry.consume_feed
    puts "Done consuming configurator's feed."
  end
end
