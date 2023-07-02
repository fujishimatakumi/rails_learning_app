require 'test_helper'

class LorasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @lora = loras(:one)
  end

  test "should get index" do
    get loras_url
    assert_response :success
  end

  test "should get new" do
    get new_lora_url
    assert_response :success
  end

  test "should create lora" do
    assert_difference('Lora.count') do
      post loras_url, params: { lora: { discription: @lora.discription, download_url: @lora.download_url, extention_category_id: @lora.extention_category_id, extention_tag_id: @lora.extention_tag_id, general_setting_id: @lora.general_setting_id, name: @lora.name } }
    end

    assert_redirected_to lora_url(Lora.last)
  end

  test "should show lora" do
    get lora_url(@lora)
    assert_response :success
  end

  test "should get edit" do
    get edit_lora_url(@lora)
    assert_response :success
  end

  test "should update lora" do
    patch lora_url(@lora), params: { lora: { discription: @lora.discription, download_url: @lora.download_url, extention_category_id: @lora.extention_category_id, extention_tag_id: @lora.extention_tag_id, general_setting_id: @lora.general_setting_id, name: @lora.name } }
    assert_redirected_to lora_url(@lora)
  end

  test "should destroy lora" do
    assert_difference('Lora.count', -1) do
      delete lora_url(@lora)
    end

    assert_redirected_to loras_url
  end
end
