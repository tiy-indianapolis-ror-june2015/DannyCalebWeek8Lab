class CreatePurchasedItems < ActiveRecord::Migration
  def change
    create_table :purchased_items do |t|
      t.integer :quantity
      t.integer :receipt_id
      t.string :category
      t.string :description
      t.string :name
      t.integer :user_id
      t.integer :price

      t.timestamps null: false
    end
  end
end
