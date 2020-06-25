require 'test_helper'

class WelcomesControllerTest < ActionDispatch::IntegrationTest
  test "should get hello" do
    get welcomes_hello_url
    assert_response :success
  end

end
