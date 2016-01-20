class CreateScores < ActiveRecord::Migration
  def change
    create_table :scores do |t|
      t.text :name
      t.decimal :score

      t.timestamps null: false
    end
  end
end
