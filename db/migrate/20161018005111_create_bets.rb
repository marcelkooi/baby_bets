class CreateBets < ActiveRecord::Migration
  def change
    create_table :bets do |t|
      t.string :value
      t.integer :property_id, null: false
      t.integer :user_id, null: false
      t.timestamps null: false
    end
  end
end
