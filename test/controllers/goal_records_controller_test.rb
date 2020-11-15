require 'test_helper'

class GoalRecordsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get goal_records_index_url
    assert_response :success
  end

  test "should get show" do
    get goal_records_show_url
    assert_response :success
  end

  test "should get create" do
    get goal_records_create_url
    assert_response :success
  end

  test "should get delete" do
    get goal_records_delete_url
    assert_response :success
  end

end
