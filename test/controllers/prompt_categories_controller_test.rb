require 'test_helper'

class PromptCategoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @prompt_category = prompt_categories(:one)
  end

  test "should get index" do
    get prompt_categories_url
    assert_response :success
  end

  test "should get new" do
    get new_prompt_category_url
    assert_response :success
  end

  test "should create prompt_category" do
    assert_difference('PromptCategory.count') do
      post prompt_categories_url, params: { prompt_category: { color: @prompt_category.color, label: @prompt_category.label } }
    end

    assert_redirected_to prompt_category_url(PromptCategory.last)
  end

  test "should show prompt_category" do
    get prompt_category_url(@prompt_category)
    assert_response :success
  end

  test "should get edit" do
    get edit_prompt_category_url(@prompt_category)
    assert_response :success
  end

  test "should update prompt_category" do
    patch prompt_category_url(@prompt_category), params: { prompt_category: { color: @prompt_category.color, label: @prompt_category.label } }
    assert_redirected_to prompt_category_url(@prompt_category)
  end

  test "should destroy prompt_category" do
    assert_difference('PromptCategory.count', -1) do
      delete prompt_category_url(@prompt_category)
    end

    assert_redirected_to prompt_categories_url
  end
end
