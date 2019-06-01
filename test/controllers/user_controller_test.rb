require 'test_helper'

class UserControllerTest < ActionDispatch::IntegrationTest
  test "should get name:text" do
    get user_name:text_url
    assert_response :success
  end

end
