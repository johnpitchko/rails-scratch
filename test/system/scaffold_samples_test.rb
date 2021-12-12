require "application_system_test_case"

class ScaffoldSamplesTest < ApplicationSystemTestCase
  setup do
    @scaffold_sample = scaffold_samples(:one)
  end

  test "visiting the index" do
    visit scaffold_samples_url
    assert_selector "h1", text: "Scaffold Samples"
  end

  test "creating a Scaffold sample" do
    visit scaffold_samples_url
    click_on "New Scaffold Sample"

    fill_in "Some text", with: @scaffold_sample.some_text
    click_on "Create Scaffold sample"

    assert_text "Scaffold sample was successfully created"
    click_on "Back"
  end

  test "updating a Scaffold sample" do
    visit scaffold_samples_url
    click_on "Edit", match: :first

    fill_in "Some text", with: @scaffold_sample.some_text
    click_on "Update Scaffold sample"

    assert_text "Scaffold sample was successfully updated"
    click_on "Back"
  end

  test "destroying a Scaffold sample" do
    visit scaffold_samples_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Scaffold sample was successfully destroyed"
  end
end
