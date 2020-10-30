require 'test_helper'

class WhiskeysControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get whiskeys_index_url
    assert_response :success
  end

  test "should get show" do
    get whiskeys_show_url
    assert_response :success
  end

  test "should get edit" do
    get whiskeys_edit_url
    assert_response :success
  end

  test "should get new" do
    get whiskeys_new_url
    assert_response :success
  end

end
