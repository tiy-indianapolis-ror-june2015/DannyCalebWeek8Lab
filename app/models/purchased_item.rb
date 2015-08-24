class PurchasedItem < ActiveRecord::Base
  belongs_to :receipt
end
