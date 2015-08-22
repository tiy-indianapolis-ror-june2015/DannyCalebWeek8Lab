class Cart < ActiveRecord::Base
  has_many :items
  belongs_to :user

  def checkout_total(quantity)
    self.items.inject(0) { |sum, item| sum + item.total_price(quantity)}
  end

  def number_of_items
    self.items.count
  end

end
