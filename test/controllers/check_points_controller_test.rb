require 'test_helper'

class CheckPointsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @check_point = check_points(:one)
  end

  test "should get index" do
    get check_points_url
    assert_response :success
  end

  test "should get new" do
    get new_check_point_url
    assert_response :success
  end

  test "should create check_point" do
    assert_difference('CheckPoint.count') do
      post check_points_url, params: { check_point: { discription: @check_point.discription, download_url: @check_point.download_url, extention_category_id: @check_point.extention_category_id, extention_tag_id: @check_point.extention_tag_id, general_setting_id: @check_point.general_setting_id, name: @check_point.name } }
    end

    assert_redirected_to check_point_url(CheckPoint.last)
  end

  test "should show check_point" do
    get check_point_url(@check_point)
    assert_response :success
  end

  test "should get edit" do
    get edit_check_point_url(@check_point)
    assert_response :success
  end

  test "should update check_point" do
    patch check_point_url(@check_point), params: { check_point: { discription: @check_point.discription, download_url: @check_point.download_url, extention_category_id: @check_point.extention_category_id, extention_tag_id: @check_point.extention_tag_id, general_setting_id: @check_point.general_setting_id, name: @check_point.name } }
    assert_redirected_to check_point_url(@check_point)
  end

  test "should destroy check_point" do
    assert_difference('CheckPoint.count', -1) do
      delete check_point_url(@check_point)
    end

    assert_redirected_to check_points_url
  end
end
