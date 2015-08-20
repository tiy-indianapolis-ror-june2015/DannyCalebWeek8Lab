class Item < ActiveRecord::Base
  belongs_to :user
  validates_presence_of :name, :price, :category, :desription, :user_id

end
