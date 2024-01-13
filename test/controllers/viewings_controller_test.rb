require "test_helper"

class ViewingsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get viewings_create_url
    assert_response :success
  end

  test "should get update" do
    get viewings_update_url
    assert_response :success
  end
end
