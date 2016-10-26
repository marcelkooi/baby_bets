class CreateBets < ActiveRecord::Migration
  def change
    create_table :bets do |t|
      t.string :value, null: false
      t.decimal :sum
      t.integer :topic_id, null: false
      t.integer :user_id, null: false
      t.timestamps null: false
    end
  end
end
