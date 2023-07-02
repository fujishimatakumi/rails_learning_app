require "application_system_test_case"

class ExtentionCategoriesTest < ApplicationSystemTestCase
  setup do
    @extention_category = extention_categories(:one)
  end

  test "visiting the index" do
    visit extention_categories_url
    assert_selector "h1", text: "Extention Categories"
  end

  test "creating a Extention category" do
    visit extention_categories_url
    click_on "New Extention Category"

    fill_in "Color", with: @extention_category.color
    fill_in "Label", with: @extention_category.label
    click_on "Create Extention category"

    assert_text "Extention category was successfully created"
    click_on "Back"
  end

  test "updating a Extention category" do
    visit extention_categories_url
    click_on "Edit", match: :first

    fill_in "Color", with: @extention_category.color
    fill_in "Label", with: @extention_category.label
    click_on "Update Extention category"

    assert_text "Extention category was successfully updated"
    click_on "Back"
  end

  test "destroying a Extention category" do
    visit extention_categories_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Extention category was successfully destroyed"
  end
end
