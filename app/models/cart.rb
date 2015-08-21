class Cart < ActiveRecord::Base
  has_many :items
  belongs_to :user

  def price
    self.items.inject(0) { |sum, item| sum + item.price }
  end

  def number_of_items
    self.items.count
  end

end
