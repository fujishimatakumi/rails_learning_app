require 'test_helper'

class NegativePromptsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @negative_prompt = negative_prompts(:one)
  end

  test "should get index" do
    get negative_prompts_url
    assert_response :success
  end

  test "should get new" do
    get new_negative_prompt_url
    assert_response :success
  end

  test "should create negative_prompt" do
    assert_difference('NegativePrompt.count') do
      post negative_prompts_url, params: { negative_prompt: { general_setting_id: @negative_prompt.general_setting_id, prompt_category_id: @negative_prompt.prompt_category_id, prompt_tag_id: @negative_prompt.prompt_tag_id, text: @negative_prompt.text, translation_text: @negative_prompt.translation_text } }
    end

    assert_redirected_to negative_prompt_url(NegativePrompt.last)
  end

  test "should show negative_prompt" do
    get negative_prompt_url(@negative_prompt)
    assert_response :success
  end

  test "should get edit" do
    get edit_negative_prompt_url(@negative_prompt)
    assert_response :success
  end

  test "should update negative_prompt" do
    patch negative_prompt_url(@negative_prompt), params: { negative_prompt: { general_setting_id: @negative_prompt.general_setting_id, prompt_category_id: @negative_prompt.prompt_category_id, prompt_tag_id: @negative_prompt.prompt_tag_id, text: @negative_prompt.text, translation_text: @negative_prompt.translation_text } }
    assert_redirected_to negative_prompt_url(@negative_prompt)
  end

  test "should destroy negative_prompt" do
    assert_difference('NegativePrompt.count', -1) do
      delete negative_prompt_url(@negative_prompt)
    end

    assert_redirected_to negative_prompts_url
  end
end
