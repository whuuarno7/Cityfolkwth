class CreateCategoryForEvents < ActiveRecord::Migration
  def change
    create_table :category_for_events do |t|

      t.timestamps null: false
    end
  end
end
