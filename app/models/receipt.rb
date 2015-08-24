class Receipt < ActiveRecord::Base
  belongs_to :user
  has_many :purchased_items
  has_many :line_items
end
