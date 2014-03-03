class UpdateClientHubToCms < ActiveRecord::Migration
  def up
    Sibling.destroy_all
    Sibling::Deploy.destroy_all
    Sibling::Instruction.destroy_all

    SiblingConsumer.perform
  end

  def down
  end
end
