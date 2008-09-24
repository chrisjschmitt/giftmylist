class ChangeColumnPersonIdToUserId < ActiveRecord::Migration
  def self.up
    rename_column :gift_lists, :person_id, :user_id
  end
  
  def self.down
    rename_column :gift_lists, :user_id, :person_id
  end
end
