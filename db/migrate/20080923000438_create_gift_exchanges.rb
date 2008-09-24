class CreateGiftExchanges < ActiveRecord::Migration
  def self.up
    create_table :gift_exchanges do |t|
      t.string :title
      t.text :description

      t.timestamps
    end
  end

  def self.down
    drop_table :gift_exchanges
  end
end
