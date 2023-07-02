require 'test_helper'

class GeneralSettingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @general_setting = general_settings(:one)
  end

  test "should get index" do
    get general_settings_url
    assert_response :success
  end

  test "should get new" do
    get new_general_setting_url
    assert_response :success
  end

  test "should create general_setting" do
    assert_difference('GeneralSetting.count') do
      post general_settings_url, params: { general_setting: { category_id: @general_setting.category_id, checkpoint_id: @general_setting.checkpoint_id, discription: @general_setting.discription, lora_id: @general_setting.lora_id, lycoris_id: @general_setting.lycoris_id, negative_prompt_id: @general_setting.negative_prompt_id, prompt_id: @general_setting.prompt_id, sampling_setting_id: @general_setting.sampling_setting_id, tag_id: @general_setting.tag_id } }
    end

    assert_redirected_to general_setting_url(GeneralSetting.last)
  end

  test "should show general_setting" do
    get general_setting_url(@general_setting)
    assert_response :success
  end

  test "should get edit" do
    get edit_general_setting_url(@general_setting)
    assert_response :success
  end

  test "should update general_setting" do
    patch general_setting_url(@general_setting), params: { general_setting: { category_id: @general_setting.category_id, checkpoint_id: @general_setting.checkpoint_id, discription: @general_setting.discription, lora_id: @general_setting.lora_id, lycoris_id: @general_setting.lycoris_id, negative_prompt_id: @general_setting.negative_prompt_id, prompt_id: @general_setting.prompt_id, sampling_setting_id: @general_setting.sampling_setting_id, tag_id: @general_setting.tag_id } }
    assert_redirected_to general_setting_url(@general_setting)
  end

  test "should destroy general_setting" do
    assert_difference('GeneralSetting.count', -1) do
      delete general_setting_url(@general_setting)
    end

    assert_redirected_to general_settings_url
  end
end
