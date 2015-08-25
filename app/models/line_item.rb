class LineItem < ActiveRecord::Base
  belongs_to :cart
  belongs_to :receipt
  belongs_to :item
end
