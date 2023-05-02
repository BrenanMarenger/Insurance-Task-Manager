require "test_helper"

class UserTest < ActiveSupport::TestCase

  def setup
    @user = User.create(username: "Admin", password: "12345678", role: "clown")
  end

  test "admin login test" do
    assert @user.username = "Admin"
    testUser = @user.authenticate("12345678")
	assert testUser.username = "Admin"
  end

  test "bad password" do
    assert ! @user.authenticate("doesnotexist")
  end
    
end