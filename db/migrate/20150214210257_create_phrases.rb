class CreatePhrases < ActiveRecord::Migration
  def change
    create_table :phrases do |t|
      t.string :phrase
      t.string :autor
      t.integer :score

      t.timestamps null: false
    end
  end
end
