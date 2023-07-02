require "application_system_test_case"

class PromptCategoriesTest < ApplicationSystemTestCase
  setup do
    @prompt_category = prompt_categories(:one)
  end

  test "visiting the index" do
    visit prompt_categories_url
    assert_selector "h1", text: "Prompt Categories"
  end

  test "creating a Prompt category" do
    visit prompt_categories_url
    click_on "New Prompt Category"

    fill_in "Color", with: @prompt_category.color
    fill_in "Label", with: @prompt_category.label
    click_on "Create Prompt category"

    assert_text "Prompt category was successfully created"
    click_on "Back"
  end

  test "updating a Prompt category" do
    visit prompt_categories_url
    click_on "Edit", match: :first

    fill_in "Color", with: @prompt_category.color
    fill_in "Label", with: @prompt_category.label
    click_on "Update Prompt category"

    assert_text "Prompt category was successfully updated"
    click_on "Back"
  end

  test "destroying a Prompt category" do
    visit prompt_categories_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Prompt category was successfully destroyed"
  end
end
