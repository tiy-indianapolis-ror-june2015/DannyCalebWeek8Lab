require 'test_helper'

class ItemTest < ActiveSupport::TestCase

  should belong_to :user

  test "item must have name" do
    item = Item.new(price: "200000",
                    description: "Apple laptop",
                    category: "electronics",
                    user_id: 1)
    assert_not item.save
  end

  test "item must have price" do
    item = Item.new(name: "MacBook",
                    description: "Apple laptop",
                    category: "electronics",
                    user_id: 1)
    assert_not item.save
  end

  test "item must have description" do
    item = Item.new(name: "MacBook",
                    price: "200000",
                    category: "electronics",
                    user_id: 1)
    assert_not item.save
  end

  test "item must have category" do
    item = Item.new(name: "MacBook",
                    price: "200000",
                    description: "Apple laptop",
                    user_id: 1)
    assert_not item.save
  end

  test "item must belong to a user" do
    item = Item.new(name: "MacBook",
                    price: "200000",
                    description: "Apple laptop",
                    category: "electronics",)
    assert_not item.save
  end

end
