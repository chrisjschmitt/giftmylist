class AddPersonAndGiftListsAndGiftItemsTables < ActiveRecord::Migration
  def self.up 
    create_table :people do |t|
      t.column :name, :string
    end
    
    create_table :gift_lists do |t|
      t.column :name, :string
      t.column :person_id, :integer
    end
    
    create_table :gift_items do |t|
      t.column :gift_list_id, :integer
      t.column :position, :integer
      t.column :name, :string
      t.column :quantity, :integer
    end
  end

  def self.down
    drop_table :people
    drop_table :gift_lists
    drop_table :gift_items
  end
end
