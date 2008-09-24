class UserGiftExchangeJoin < ActiveRecord::Migration
  def self.up
    create_table :gift_exchanges_users, :id => false do |t|
      t.integer :gift_exchange_id
      t.integer :user_id
    end
  end

  def self.down
    drop_table :gift_exchanges_users
  end
end
