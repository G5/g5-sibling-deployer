class UpdateClientHubToCms < ActiveRecord::Migration
  def up
    Sibling.destroy_all
    SiblingConsumer.perform
  end

  def down
  end
end
