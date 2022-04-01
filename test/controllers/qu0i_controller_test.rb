require "test_helper"

class Qu0iControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get qu0i_index_url
    assert_response :success
  end
end
