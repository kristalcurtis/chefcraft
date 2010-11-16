class CreateRecipeBoxes < ActiveRecord::Migration
  def self.up
    create_table :recipe_boxes do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :recipe_boxes
  end
end
