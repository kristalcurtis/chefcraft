class CreateChefs < ActiveRecord::Migration
  def self.up
    create_table :chefs do |t|
      t.string :username

      t.timestamps
    end
  end

  def self.down
    drop_table :chefs
  end
end
