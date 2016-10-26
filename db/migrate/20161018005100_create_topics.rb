class CreateTopics < ActiveRecord::Migration
  def change
    create_table :topics do |t|
      t.string :name
      t.decimal :multiplier, null: false
      t.string :unit
      t.string :actual_value
      t.string :type, null: false
      t.timestamps null: false
    end
  end
end
