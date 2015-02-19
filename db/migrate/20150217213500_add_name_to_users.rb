class AddNameToUsers < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
    add_column :users, :sexo, :string
    add_column :users, :tel, :integer
    add_column :users, :bibliography, :text
     add_column :users, :locationborn, :string
    add_column :users, :location, :string
    add_column :users, :website, :string
    add_column :users, :borndate, :integer
       
    
  end
end
