require "application_system_test_case"

class SamplingSettingsTest < ApplicationSystemTestCase
  setup do
    @sampling_setting = sampling_settings(:one)
  end

  test "visiting the index" do
    visit sampling_settings_url
    assert_selector "h1", text: "Sampling Settings"
  end

  test "creating a Sampling setting" do
    visit sampling_settings_url
    click_on "New Sampling Setting"

    fill_in "Batch count", with: @sampling_setting.batch_count
    fill_in "Batch size", with: @sampling_setting.batch_size
    fill_in "Cfg scale", with: @sampling_setting.cfg_scale
    check "Face recover flg" if @sampling_setting.face_recover_flg
    fill_in "General setting", with: @sampling_setting.general_setting_id
    check "Generate tiling flg" if @sampling_setting.generate_tiling_flg
    fill_in "Height", with: @sampling_setting.height
    fill_in "High quality setting", with: @sampling_setting.high_quality_setting_id
    fill_in "Method", with: @sampling_setting.method_id
    fill_in "Script", with: @sampling_setting.script_id
    fill_in "Seed", with: @sampling_setting.seed
    fill_in "Step", with: @sampling_setting.step
    fill_in "Width", with: @sampling_setting.width
    click_on "Create Sampling setting"

    assert_text "Sampling setting was successfully created"
    click_on "Back"
  end

  test "updating a Sampling setting" do
    visit sampling_settings_url
    click_on "Edit", match: :first

    fill_in "Batch count", with: @sampling_setting.batch_count
    fill_in "Batch size", with: @sampling_setting.batch_size
    fill_in "Cfg scale", with: @sampling_setting.cfg_scale
    check "Face recover flg" if @sampling_setting.face_recover_flg
    fill_in "General setting", with: @sampling_setting.general_setting_id
    check "Generate tiling flg" if @sampling_setting.generate_tiling_flg
    fill_in "Height", with: @sampling_setting.height
    fill_in "High quality setting", with: @sampling_setting.high_quality_setting_id
    fill_in "Method", with: @sampling_setting.method_id
    fill_in "Script", with: @sampling_setting.script_id
    fill_in "Seed", with: @sampling_setting.seed
    fill_in "Step", with: @sampling_setting.step
    fill_in "Width", with: @sampling_setting.width
    click_on "Update Sampling setting"

    assert_text "Sampling setting was successfully updated"
    click_on "Back"
  end

  test "destroying a Sampling setting" do
    visit sampling_settings_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Sampling setting was successfully destroyed"
  end
end
