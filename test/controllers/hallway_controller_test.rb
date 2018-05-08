require 'test_helper'

class HallwayControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get hallway_index_url
    assert_response :success
  end

  test "should get show" do
    get hallway_show_url
    assert_response :success
  end

end
