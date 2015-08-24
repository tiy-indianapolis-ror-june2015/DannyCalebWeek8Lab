class Item < ActiveRecord::Base
  belongs_to :user
  has_many :line_items
  has_many :carts, through: :line_items
  has_many :receipts, through: :line_items
  validates_presence_of :name, :price, :category, :description, :user_id
  has_permalink(:name, :true)

  def total_price(quantity)
    self.price * (quantity.to_i)
  end



end
