require "application_system_test_case"

class GeneralSettingsTest < ApplicationSystemTestCase
  setup do
    @general_setting = general_settings(:one)
  end

  test "visiting the index" do
    visit general_settings_url
    assert_selector "h1", text: "General Settings"
  end

  test "creating a General setting" do
    visit general_settings_url
    click_on "New General Setting"

    fill_in "Category", with: @general_setting.category_id
    fill_in "Checkpoint", with: @general_setting.checkpoint_id
    fill_in "Discription", with: @general_setting.discription
    fill_in "Lora", with: @general_setting.lora_id
    fill_in "Lycoris", with: @general_setting.lycoris_id
    fill_in "Negative prompt", with: @general_setting.negative_prompt_id
    fill_in "Prompt", with: @general_setting.prompt_id
    fill_in "Sampling setting", with: @general_setting.sampling_setting_id
    fill_in "Tag", with: @general_setting.tag_id
    click_on "Create General setting"

    assert_text "General setting was successfully created"
    click_on "Back"
  end

  test "updating a General setting" do
    visit general_settings_url
    click_on "Edit", match: :first

    fill_in "Category", with: @general_setting.category_id
    fill_in "Checkpoint", with: @general_setting.checkpoint_id
    fill_in "Discription", with: @general_setting.discription
    fill_in "Lora", with: @general_setting.lora_id
    fill_in "Lycoris", with: @general_setting.lycoris_id
    fill_in "Negative prompt", with: @general_setting.negative_prompt_id
    fill_in "Prompt", with: @general_setting.prompt_id
    fill_in "Sampling setting", with: @general_setting.sampling_setting_id
    fill_in "Tag", with: @general_setting.tag_id
    click_on "Update General setting"

    assert_text "General setting was successfully updated"
    click_on "Back"
  end

  test "destroying a General setting" do
    visit general_settings_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "General setting was successfully destroyed"
  end
end
