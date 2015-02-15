class CreateAgendas < ActiveRecord::Migration
  def change
    create_table :agendas do |t|
      t.integer :hourend
      t.integer :hourstart

      t.timestamps null: false
    end
  end
end
