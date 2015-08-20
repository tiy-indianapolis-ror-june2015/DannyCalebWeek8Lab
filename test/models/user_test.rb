require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "strong parameters" do
    user = User.create(
      :email => "test@user.com",
      :username => "testuser",
      :full_name => "Kilgore Trout",
      :role => "customer",
      :password => "password",
      :password_confirmation => "password"
    )
    assert user.email
    assert user.username
    assert user.full_name
    assert user.role
    assert user.password
    assert user.password_confirmation
  end
end
