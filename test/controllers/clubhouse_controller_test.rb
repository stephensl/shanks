require "test_helper"

class ClubhouseControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get clubhouse_index_url
    assert_response :success
  end
end
