require "application_system_test_case"

class LycorisTest < ApplicationSystemTestCase
  setup do
    @lycori = lycoris(:one)
  end

  test "visiting the index" do
    visit lycoris_url
    assert_selector "h1", text: "Lycoris"
  end

  test "creating a Lycori" do
    visit lycoris_url
    click_on "New Lycori"

    fill_in "Discription", with: @lycori.discription
    fill_in "Download url", with: @lycori.download_url
    fill_in "Extention category", with: @lycori.extention_category_id
    fill_in "Extention tag", with: @lycori.extention_tag_id
    fill_in "General setting", with: @lycori.general_setting_id
    fill_in "Name", with: @lycori.name
    click_on "Create Lycori"

    assert_text "Lycori was successfully created"
    click_on "Back"
  end

  test "updating a Lycori" do
    visit lycoris_url
    click_on "Edit", match: :first

    fill_in "Discription", with: @lycori.discription
    fill_in "Download url", with: @lycori.download_url
    fill_in "Extention category", with: @lycori.extention_category_id
    fill_in "Extention tag", with: @lycori.extention_tag_id
    fill_in "General setting", with: @lycori.general_setting_id
    fill_in "Name", with: @lycori.name
    click_on "Update Lycori"

    assert_text "Lycori was successfully updated"
    click_on "Back"
  end

  test "destroying a Lycori" do
    visit lycoris_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Lycori was successfully destroyed"
  end
end
