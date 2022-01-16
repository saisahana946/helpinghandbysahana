require 'test_helper'

class GettersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @getter = getters(:one)
  end

  test "should get index" do
    get getters_url
    assert_response :success
  end

  test "should get new" do
    get new_getter_url
    assert_response :success
  end

  test "should create getter" do
    assert_difference('Getter.count') do
      post getters_url, params: { getter: { contact: @getter.contact, firstname: @getter.firstname, image: @getter.image, lastname: @getter.lastname, location: @getter.location, need: @getter.need } }
    end

    assert_redirected_to getter_url(Getter.last)
  end

  test "should show getter" do
    get getter_url(@getter)
    assert_response :success
  end

  test "should get edit" do
    get edit_getter_url(@getter)
    assert_response :success
  end

  test "should update getter" do
    patch getter_url(@getter), params: { getter: { contact: @getter.contact, firstname: @getter.firstname, image: @getter.image, lastname: @getter.lastname, location: @getter.location, need: @getter.need } }
    assert_redirected_to getter_url(@getter)
  end

  test "should destroy getter" do
    assert_difference('Getter.count', -1) do
      delete getter_url(@getter)
    end

    assert_redirected_to getters_url
  end
end
