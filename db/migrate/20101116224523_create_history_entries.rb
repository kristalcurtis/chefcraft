class CreateHistoryEntries < ActiveRecord::Migration
  def self.up
    create_table :history_entries do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :history_entries
  end
end
