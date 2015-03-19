class AddAttachmentAvatarToUsers < ActiveRecord::Migration
  def self.up
    change_table :users do |t|
      t.attachment :avatar
      t.attachment :background
    end
     change_table :events do |t|
      t.attachment :avatar
      t.attachment :background
    end
     change_table :places do |t|
      t.attachment :avatar
      t.attachment :background
    end
  end
  
  def self.down
    remove_attachment :users, :avatar
    remove_attachment :users, :background
    remove_attachment :events, :avatar
    remove_attachment :events, :background
    remove_attachment :places, :avatar
    remove_attachment :places, :background
  end
end
