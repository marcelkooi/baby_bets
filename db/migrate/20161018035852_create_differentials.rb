class CreateDifferentials < ActiveRecord::Migration
  def change
    create_table :differentials do |t|
      t.belongs_to :bet, index: true
      t.decimal :sum
      t.timestamps null: false
    end
  end
end
