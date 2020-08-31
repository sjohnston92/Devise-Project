require 'test_helper'

class BucketListsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get bucket_lists_index_url
    assert_response :success
  end

  test "should get show" do
    get bucket_lists_show_url
    assert_response :success
  end

  test "should get new" do
    get bucket_lists_new_url
    assert_response :success
  end

  test "should get edit" do
    get bucket_lists_edit_url
    assert_response :success
  end

end
