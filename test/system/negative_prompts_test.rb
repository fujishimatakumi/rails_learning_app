require "application_system_test_case"

class NegativePromptsTest < ApplicationSystemTestCase
  setup do
    @negative_prompt = negative_prompts(:one)
  end

  test "visiting the index" do
    visit negative_prompts_url
    assert_selector "h1", text: "Negative Prompts"
  end

  test "creating a Negative prompt" do
    visit negative_prompts_url
    click_on "New Negative Prompt"

    fill_in "General setting", with: @negative_prompt.general_setting_id
    fill_in "Prompt category", with: @negative_prompt.prompt_category_id
    fill_in "Prompt tag", with: @negative_prompt.prompt_tag_id
    fill_in "Text", with: @negative_prompt.text
    fill_in "Translation text", with: @negative_prompt.translation_text
    click_on "Create Negative prompt"

    assert_text "Negative prompt was successfully created"
    click_on "Back"
  end

  test "updating a Negative prompt" do
    visit negative_prompts_url
    click_on "Edit", match: :first

    fill_in "General setting", with: @negative_prompt.general_setting_id
    fill_in "Prompt category", with: @negative_prompt.prompt_category_id
    fill_in "Prompt tag", with: @negative_prompt.prompt_tag_id
    fill_in "Text", with: @negative_prompt.text
    fill_in "Translation text", with: @negative_prompt.translation_text
    click_on "Update Negative prompt"

    assert_text "Negative prompt was successfully updated"
    click_on "Back"
  end

  test "destroying a Negative prompt" do
    visit negative_prompts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Negative prompt was successfully destroyed"
  end
end
