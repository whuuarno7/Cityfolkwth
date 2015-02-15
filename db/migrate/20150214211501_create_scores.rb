class CreateScores < ActiveRecord::Migration
  def change
    create_table :scores do |t|
      t.integer :bites
      t.integer :claps
      t.integer :tags
      t.integer :experiences
      t.integer :camaradas
      t.integer :shares

      t.timestamps null: false
    end
  end
end
