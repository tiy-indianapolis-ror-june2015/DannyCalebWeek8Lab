class Item < ActiveRecord::Base
  belongs_to :user
  belongs_to :cart
  validates_presence_of :name, :price, :category, :description, :user_id
  has_permalink(:name, :true)

  # attr_accessor_with_default :quantity,1

  def total_price
    self.price * self.quantity
  end

end
