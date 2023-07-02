require "application_system_test_case"

class LorasTest < ApplicationSystemTestCase
  setup do
    @lora = loras(:one)
  end

  test "visiting the index" do
    visit loras_url
    assert_selector "h1", text: "Loras"
  end

  test "creating a Lora" do
    visit loras_url
    click_on "New Lora"

    fill_in "Discription", with: @lora.discription
    fill_in "Download url", with: @lora.download_url
    fill_in "Extention category", with: @lora.extention_category_id
    fill_in "Extention tag", with: @lora.extention_tag_id
    fill_in "General setting", with: @lora.general_setting_id
    fill_in "Name", with: @lora.name
    click_on "Create Lora"

    assert_text "Lora was successfully created"
    click_on "Back"
  end

  test "updating a Lora" do
    visit loras_url
    click_on "Edit", match: :first

    fill_in "Discription", with: @lora.discription
    fill_in "Download url", with: @lora.download_url
    fill_in "Extention category", with: @lora.extention_category_id
    fill_in "Extention tag", with: @lora.extention_tag_id
    fill_in "General setting", with: @lora.general_setting_id
    fill_in "Name", with: @lora.name
    click_on "Update Lora"

    assert_text "Lora was successfully updated"
    click_on "Back"
  end

  test "destroying a Lora" do
    visit loras_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Lora was successfully destroyed"
  end
end
