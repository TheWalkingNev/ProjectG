require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get get_username" do
    get users_get_username_url
    assert_response :success
  end

end
