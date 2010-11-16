class CreateRecipeCards < ActiveRecord::Migration
  def self.up
    create_table :recipe_cards do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :recipe_cards
  end
end
