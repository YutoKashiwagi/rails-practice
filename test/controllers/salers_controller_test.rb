require 'test_helper'

class SalersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @saler = salers(:one)
  end

  test "should get index" do
    get salers_url
    assert_response :success
  end

  test "should get new" do
    get new_saler_url
    assert_response :success
  end

  test "should create saler" do
    assert_difference('Saler.count') do
      post salers_url, params: { saler: { name: @saler.name } }
    end

    assert_redirected_to saler_url(Saler.last)
  end

  test "should show saler" do
    get saler_url(@saler)
    assert_response :success
  end

  test "should get edit" do
    get edit_saler_url(@saler)
    assert_response :success
  end

  test "should update saler" do
    patch saler_url(@saler), params: { saler: { name: @saler.name } }
    assert_redirected_to saler_url(@saler)
  end

  test "should destroy saler" do
    assert_difference('Saler.count', -1) do
      delete saler_url(@saler)
    end

    assert_redirected_to salers_url
  end
end
