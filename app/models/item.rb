class Item < ActiveRecord::Base
  belongs_to :user
  belongs_to :cart
  validates_presence_of :name, :price, :category, :description, :user_id
  has_permalink(:name, :true)

  def total_price(quantity)
    self.price * (quantity.to_i)
  end



end
