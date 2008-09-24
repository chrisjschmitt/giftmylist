class AddPurchasedAndPurchasedByAndPurchasedByDate < ActiveRecord::Migration
  def self.up
    add_column :gift_items, :purchased, :boolean
    add_column :gift_items, :purchased_by, :string
    add_column :gift_items, :purchased_at, :datetime
  end

  def self.down
    remove_column :gift_items, :purchased
    remove_column :gift_items, :purchased_by
    remove_column :gift_items, :purchased_at
  end
end
