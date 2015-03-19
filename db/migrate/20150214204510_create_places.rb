class CreatePlaces < ActiveRecord::Migration
  def change
    create_table :places do |t|
      t.string :name
      t.string :adress
      t.integer :longitude
      t.integer :latitude
      t.string :description

      t.timestamps null: false
    end
  end
end
