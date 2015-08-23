class AddTotalToReceipts < ActiveRecord::Migration
  def change
    add_column :receipts, :checkout_total, :integer
  end
end
