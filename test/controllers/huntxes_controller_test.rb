require "test_helper"

class HuntxesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get huntxes_index_url
    assert_response :success
  end

  test "should get show" do
    get huntxes_show_url
    assert_response :success
  end
end
