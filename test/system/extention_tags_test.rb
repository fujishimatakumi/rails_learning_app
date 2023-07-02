require "application_system_test_case"

class ExtentionTagsTest < ApplicationSystemTestCase
  setup do
    @extention_tag = extention_tags(:one)
  end

  test "visiting the index" do
    visit extention_tags_url
    assert_selector "h1", text: "Extention Tags"
  end

  test "creating a Extention tag" do
    visit extention_tags_url
    click_on "New Extention Tag"

    fill_in "Color", with: @extention_tag.color
    fill_in "Label", with: @extention_tag.label
    click_on "Create Extention tag"

    assert_text "Extention tag was successfully created"
    click_on "Back"
  end

  test "updating a Extention tag" do
    visit extention_tags_url
    click_on "Edit", match: :first

    fill_in "Color", with: @extention_tag.color
    fill_in "Label", with: @extention_tag.label
    click_on "Update Extention tag"

    assert_text "Extention tag was successfully updated"
    click_on "Back"
  end

  test "destroying a Extention tag" do
    visit extention_tags_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Extention tag was successfully destroyed"
  end
end
