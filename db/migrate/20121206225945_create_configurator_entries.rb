class CreateConfiguratorEntries < ActiveRecord::Migration
  def change
    create_table :configurator_entries do |t|
      t.string :uid
      t.boolean :targets_me

      t.timestamps
    end
  end
end
