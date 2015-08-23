class Cart < ActiveRecord::Base
  has_many :items
  belongs_to :user

  def number_of_items
    self.items.count
  end

end
