require "test_helper"

class PlaydatesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @playdate = playdates(:one)
  end

  test "should get index" do
    get playdates_url
    assert_response :success
  end

  test "should get new" do
    get new_playdate_url
    assert_response :success
  end

  test "should create playdate" do
    assert_difference("Playdate.count") do
      post playdates_url, params: { playdate: { description: @playdate.description, end_time: @playdate.end_time, start_time: @playdate.start_time, title: @playdate.title } }
    end

    assert_redirected_to playdate_url(Playdate.last)
  end

  test "should show playdate" do
    get playdate_url(@playdate)
    assert_response :success
  end

  test "should get edit" do
    get edit_playdate_url(@playdate)
    assert_response :success
  end

  test "should update playdate" do
    patch playdate_url(@playdate), params: { playdate: { description: @playdate.description, end_time: @playdate.end_time, start_time: @playdate.start_time, title: @playdate.title } }
    assert_redirected_to playdate_url(@playdate)
  end

  test "should destroy playdate" do
    assert_difference("Playdate.count", -1) do
      delete playdate_url(@playdate)
    end

    assert_redirected_to playdates_url
  end
end
