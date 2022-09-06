require "application_system_test_case"

class PlaydatesTest < ApplicationSystemTestCase
  setup do
    @playdate = playdates(:one)
  end

  test "visiting the index" do
    visit playdates_url
    assert_selector "h1", text: "Playdates"
  end

  test "should create playdate" do
    visit playdates_url
    click_on "New playdate"

    fill_in "Description", with: @playdate.description
    fill_in "End time", with: @playdate.end_time
    fill_in "Start time", with: @playdate.start_time
    fill_in "Title", with: @playdate.title
    click_on "Create Playdate"

    assert_text "Playdate was successfully created"
    click_on "Back"
  end

  test "should update Playdate" do
    visit playdate_url(@playdate)
    click_on "Edit this playdate", match: :first

    fill_in "Description", with: @playdate.description
    fill_in "End time", with: @playdate.end_time
    fill_in "Start time", with: @playdate.start_time
    fill_in "Title", with: @playdate.title
    click_on "Update Playdate"

    assert_text "Playdate was successfully updated"
    click_on "Back"
  end

  test "should destroy Playdate" do
    visit playdate_url(@playdate)
    click_on "Destroy this playdate", match: :first

    assert_text "Playdate was successfully destroyed"
  end
end
