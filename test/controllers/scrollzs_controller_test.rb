require 'test_helper'

class ScrollzsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @scrollz = scrollzs(:one)
  end

  test "should get index" do
    get scrollzs_url
    assert_response :success
  end

  test "should get new" do
    get new_scrollz_url
    assert_response :success
  end

  test "should create scrollz" do
    assert_difference('Scrollz.count') do
      post scrollzs_url, params: { scrollz: {  } }
    end

    assert_redirected_to scrollz_url(Scrollz.last)
  end

  test "should show scrollz" do
    get scrollz_url(@scrollz)
    assert_response :success
  end

  test "should get edit" do
    get edit_scrollz_url(@scrollz)
    assert_response :success
  end

  test "should update scrollz" do
    patch scrollz_url(@scrollz), params: { scrollz: {  } }
    assert_redirected_to scrollz_url(@scrollz)
  end

  test "should destroy scrollz" do
    assert_difference('Scrollz.count', -1) do
      delete scrollz_url(@scrollz)
    end

    assert_redirected_to scrollzs_url
  end
end
