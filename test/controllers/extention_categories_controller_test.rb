require 'test_helper'

class ExtentionCategoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @extention_category = extention_categories(:one)
  end

  test "should get index" do
    get extention_categories_url
    assert_response :success
  end

  test "should get new" do
    get new_extention_category_url
    assert_response :success
  end

  test "should create extention_category" do
    assert_difference('ExtentionCategory.count') do
      post extention_categories_url, params: { extention_category: { color: @extention_category.color, label: @extention_category.label } }
    end

    assert_redirected_to extention_category_url(ExtentionCategory.last)
  end

  test "should show extention_category" do
    get extention_category_url(@extention_category)
    assert_response :success
  end

  test "should get edit" do
    get edit_extention_category_url(@extention_category)
    assert_response :success
  end

  test "should update extention_category" do
    patch extention_category_url(@extention_category), params: { extention_category: { color: @extention_category.color, label: @extention_category.label } }
    assert_redirected_to extention_category_url(@extention_category)
  end

  test "should destroy extention_category" do
    assert_difference('ExtentionCategory.count', -1) do
      delete extention_category_url(@extention_category)
    end

    assert_redirected_to extention_categories_url
  end
end
