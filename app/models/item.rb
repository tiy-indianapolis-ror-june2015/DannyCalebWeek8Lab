class Item < ActiveRecord::Base
  belongs_to :user
  belongs_to :cart
  belongs_to :receipt
  validates_presence_of :name, :price, :category, :description, :user_id
  has_permalink(:name, :true)

  def total_price(quantity)
    self.price * (quantity)
  end



end
