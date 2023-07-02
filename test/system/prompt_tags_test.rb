require "application_system_test_case"

class PromptTagsTest < ApplicationSystemTestCase
  setup do
    @prompt_tag = prompt_tags(:one)
  end

  test "visiting the index" do
    visit prompt_tags_url
    assert_selector "h1", text: "Prompt Tags"
  end

  test "creating a Prompt tag" do
    visit prompt_tags_url
    click_on "New Prompt Tag"

    fill_in "Color", with: @prompt_tag.color
    fill_in "Label", with: @prompt_tag.label
    click_on "Create Prompt tag"

    assert_text "Prompt tag was successfully created"
    click_on "Back"
  end

  test "updating a Prompt tag" do
    visit prompt_tags_url
    click_on "Edit", match: :first

    fill_in "Color", with: @prompt_tag.color
    fill_in "Label", with: @prompt_tag.label
    click_on "Update Prompt tag"

    assert_text "Prompt tag was successfully updated"
    click_on "Back"
  end

  test "destroying a Prompt tag" do
    visit prompt_tags_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Prompt tag was successfully destroyed"
  end
end
