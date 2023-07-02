require 'test_helper'

class PromptTagsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @prompt_tag = prompt_tags(:one)
  end

  test "should get index" do
    get prompt_tags_url
    assert_response :success
  end

  test "should get new" do
    get new_prompt_tag_url
    assert_response :success
  end

  test "should create prompt_tag" do
    assert_difference('PromptTag.count') do
      post prompt_tags_url, params: { prompt_tag: { color: @prompt_tag.color, label: @prompt_tag.label } }
    end

    assert_redirected_to prompt_tag_url(PromptTag.last)
  end

  test "should show prompt_tag" do
    get prompt_tag_url(@prompt_tag)
    assert_response :success
  end

  test "should get edit" do
    get edit_prompt_tag_url(@prompt_tag)
    assert_response :success
  end

  test "should update prompt_tag" do
    patch prompt_tag_url(@prompt_tag), params: { prompt_tag: { color: @prompt_tag.color, label: @prompt_tag.label } }
    assert_redirected_to prompt_tag_url(@prompt_tag)
  end

  test "should destroy prompt_tag" do
    assert_difference('PromptTag.count', -1) do
      delete prompt_tag_url(@prompt_tag)
    end

    assert_redirected_to prompt_tags_url
  end
end
