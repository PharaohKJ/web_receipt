require "application_system_test_case"

class BatchFilesTest < ApplicationSystemTestCase
  setup do
    @batch_file = batch_files(:one)
  end

  test "visiting the index" do
    visit batch_files_url
    assert_selector "h1", text: "Batch Files"
  end

  test "creating a Batch file" do
    visit batch_files_url
    click_on "New Batch File"

    fill_in "Name", with: @batch_file.name
    click_on "Create Batch file"

    assert_text "Batch file was successfully created"
    click_on "Back"
  end

  test "updating a Batch file" do
    visit batch_files_url
    click_on "Edit", match: :first

    fill_in "Name", with: @batch_file.name
    click_on "Update Batch file"

    assert_text "Batch file was successfully updated"
    click_on "Back"
  end

  test "destroying a Batch file" do
    visit batch_files_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Batch file was successfully destroyed"
  end
end
