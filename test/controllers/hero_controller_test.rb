require "test_helper"

class HeroControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get hero_create_url
    assert_response :success
  end

  test "should get edit" do
    get hero_edit_url
    assert_response :success
  end

  test "should get update" do
    get hero_update_url
    assert_response :success
  end

  test "should get new" do
    get hero_new_url
    assert_response :success
  end

  test "should get delete" do
    get hero_delete_url
    assert_response :success
  end
end
