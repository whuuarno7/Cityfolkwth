class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.string :description
      t.integer :datestart
      t.integer :dateend
      t.integer :hourstart
      t.integer :hourend
      t.integer :price
      t.string :wherebuy

      t.timestamps null: false
    end
  end
end
