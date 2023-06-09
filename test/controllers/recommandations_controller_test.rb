require "test_helper"

class RecommandationsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get recommandations_index_url
    assert_response :success
  end

  test "should get show" do
    get recommandations_show_url
    assert_response :success
  end

  test "should get new" do
    get recommandations_new_url
    assert_response :success
  end

  test "should get edit" do
    get recommandations_edit_url
    assert_response :success
  end

  test "should get create" do
    get recommandations_create_url
    assert_response :success
  end

  test "should get update" do
    get recommandations_update_url
    assert_response :success
  end

  test "should get destroy" do
    get recommandations_destroy_url
    assert_response :success
  end
end
