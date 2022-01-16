require 'test_helper'

class InstagramControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get instagram_index_url
    assert_response :success
  end

  test "should get profile" do
    get instagram_profile_url
    assert_response :success
  end

end
