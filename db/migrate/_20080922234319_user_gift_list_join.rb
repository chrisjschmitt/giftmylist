class UserGiftListJoin < ActiveRecord::Migration
  def self.up
    create_table :gift_lists_users, :id => false do |t|
      t.integer :gift_list_id
      t.integer :user_id
    end
  end

  def self.down
    drop_table :gift_lists_users
  end
end
