require "application_system_test_case"

class CheckPointsTest < ApplicationSystemTestCase
  setup do
    @check_point = check_points(:one)
  end

  test "visiting the index" do
    visit check_points_url
    assert_selector "h1", text: "Check Points"
  end

  test "creating a Check point" do
    visit check_points_url
    click_on "New Check Point"

    fill_in "Discription", with: @check_point.discription
    fill_in "Download url", with: @check_point.download_url
    fill_in "Extention category", with: @check_point.extention_category_id
    fill_in "Extention tag", with: @check_point.extention_tag_id
    fill_in "General setting", with: @check_point.general_setting_id
    fill_in "Name", with: @check_point.name
    click_on "Create Check point"

    assert_text "Check point was successfully created"
    click_on "Back"
  end

  test "updating a Check point" do
    visit check_points_url
    click_on "Edit", match: :first

    fill_in "Discription", with: @check_point.discription
    fill_in "Download url", with: @check_point.download_url
    fill_in "Extention category", with: @check_point.extention_category_id
    fill_in "Extention tag", with: @check_point.extention_tag_id
    fill_in "General setting", with: @check_point.general_setting_id
    fill_in "Name", with: @check_point.name
    click_on "Update Check point"

    assert_text "Check point was successfully updated"
    click_on "Back"
  end

  test "destroying a Check point" do
    visit check_points_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Check point was successfully destroyed"
  end
end
