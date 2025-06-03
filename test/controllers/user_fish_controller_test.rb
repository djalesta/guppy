require "test_helper"

class UserFishControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get user_fish_index_url
    assert_response :success
  end

  test "should get show" do
    get user_fish_show_url
    assert_response :success
  end

  test "should get new" do
    get user_fish_new_url
    assert_response :success
  end

  test "should get create" do
    get user_fish_create_url
    assert_response :success
  end

  test "should get edit" do
    get user_fish_edit_url
    assert_response :success
  end

  test "should get update" do
    get user_fish_update_url
    assert_response :success
  end

  test "should get destroy" do
    get user_fish_destroy_url
    assert_response :success
  end
end
