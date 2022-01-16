require "application_system_test_case"

class GettersTest < ApplicationSystemTestCase
  setup do
    @getter = getters(:one)
  end

  test "visiting the index" do
    visit getters_url
    assert_selector "h1", text: "Getters"
  end

  test "creating a Getter" do
    visit getters_url
    click_on "New Getter"

    fill_in "Contact", with: @getter.contact
    fill_in "Firstname", with: @getter.firstname
    fill_in "Image", with: @getter.image
    fill_in "Lastname", with: @getter.lastname
    fill_in "Location", with: @getter.location
    fill_in "Need", with: @getter.need
    click_on "Create Getter"

    assert_text "Getter was successfully created"
    click_on "Back"
  end

  test "updating a Getter" do
    visit getters_url
    click_on "Edit", match: :first

    fill_in "Contact", with: @getter.contact
    fill_in "Firstname", with: @getter.firstname
    fill_in "Image", with: @getter.image
    fill_in "Lastname", with: @getter.lastname
    fill_in "Location", with: @getter.location
    fill_in "Need", with: @getter.need
    click_on "Update Getter"

    assert_text "Getter was successfully updated"
    click_on "Back"
  end

  test "destroying a Getter" do
    visit getters_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Getter was successfully destroyed"
  end
end
