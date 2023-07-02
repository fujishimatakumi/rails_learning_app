require 'test_helper'

class ExtentionTagsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @extention_tag = extention_tags(:one)
  end

  test "should get index" do
    get extention_tags_url
    assert_response :success
  end

  test "should get new" do
    get new_extention_tag_url
    assert_response :success
  end

  test "should create extention_tag" do
    assert_difference('ExtentionTag.count') do
      post extention_tags_url, params: { extention_tag: { color: @extention_tag.color, label: @extention_tag.label } }
    end

    assert_redirected_to extention_tag_url(ExtentionTag.last)
  end

  test "should show extention_tag" do
    get extention_tag_url(@extention_tag)
    assert_response :success
  end

  test "should get edit" do
    get edit_extention_tag_url(@extention_tag)
    assert_response :success
  end

  test "should update extention_tag" do
    patch extention_tag_url(@extention_tag), params: { extention_tag: { color: @extention_tag.color, label: @extention_tag.label } }
    assert_redirected_to extention_tag_url(@extention_tag)
  end

  test "should destroy extention_tag" do
    assert_difference('ExtentionTag.count', -1) do
      delete extention_tag_url(@extention_tag)
    end

    assert_redirected_to extention_tags_url
  end
end
