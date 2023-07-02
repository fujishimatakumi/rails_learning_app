require 'test_helper'

class SamplingSettingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sampling_setting = sampling_settings(:one)
  end

  test "should get index" do
    get sampling_settings_url
    assert_response :success
  end

  test "should get new" do
    get new_sampling_setting_url
    assert_response :success
  end

  test "should create sampling_setting" do
    assert_difference('SamplingSetting.count') do
      post sampling_settings_url, params: { sampling_setting: { batch_count: @sampling_setting.batch_count, batch_size: @sampling_setting.batch_size, cfg_scale: @sampling_setting.cfg_scale, face_recover_flg: @sampling_setting.face_recover_flg, general_setting_id: @sampling_setting.general_setting_id, generate_tiling_flg: @sampling_setting.generate_tiling_flg, height: @sampling_setting.height, high_quality_setting_id: @sampling_setting.high_quality_setting_id, method_id: @sampling_setting.method_id, script_id: @sampling_setting.script_id, seed: @sampling_setting.seed, step: @sampling_setting.step, width: @sampling_setting.width } }
    end

    assert_redirected_to sampling_setting_url(SamplingSetting.last)
  end

  test "should show sampling_setting" do
    get sampling_setting_url(@sampling_setting)
    assert_response :success
  end

  test "should get edit" do
    get edit_sampling_setting_url(@sampling_setting)
    assert_response :success
  end

  test "should update sampling_setting" do
    patch sampling_setting_url(@sampling_setting), params: { sampling_setting: { batch_count: @sampling_setting.batch_count, batch_size: @sampling_setting.batch_size, cfg_scale: @sampling_setting.cfg_scale, face_recover_flg: @sampling_setting.face_recover_flg, general_setting_id: @sampling_setting.general_setting_id, generate_tiling_flg: @sampling_setting.generate_tiling_flg, height: @sampling_setting.height, high_quality_setting_id: @sampling_setting.high_quality_setting_id, method_id: @sampling_setting.method_id, script_id: @sampling_setting.script_id, seed: @sampling_setting.seed, step: @sampling_setting.step, width: @sampling_setting.width } }
    assert_redirected_to sampling_setting_url(@sampling_setting)
  end

  test "should destroy sampling_setting" do
    assert_difference('SamplingSetting.count', -1) do
      delete sampling_setting_url(@sampling_setting)
    end

    assert_redirected_to sampling_settings_url
  end
end
