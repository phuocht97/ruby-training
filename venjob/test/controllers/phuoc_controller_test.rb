require 'test_helper'

class PhuocControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get phuoc_index_url
    assert_response :success
  end

end
