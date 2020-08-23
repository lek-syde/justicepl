require "application_system_test_case"

class LawyerProfilesTest < ApplicationSystemTestCase
  setup do
    @lawyer_profile = lawyer_profiles(:one)
  end

  test "visiting the index" do
    visit lawyer_profiles_url
    assert_selector "h1", text: "Lawyer Profiles"
  end

  test "creating a Lawyer profile" do
    visit lawyer_profiles_url
    click_on "New Lawyer Profile"

    fill_in "Prefix", with: @lawyer_profile.prefix
    click_on "Create Lawyer profile"

    assert_text "Lawyer profile was successfully created"
    click_on "Back"
  end

  test "updating a Lawyer profile" do
    visit lawyer_profiles_url
    click_on "Edit", match: :first

    fill_in "Prefix", with: @lawyer_profile.prefix
    click_on "Update Lawyer profile"

    assert_text "Lawyer profile was successfully updated"
    click_on "Back"
  end

  test "destroying a Lawyer profile" do
    visit lawyer_profiles_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Lawyer profile was successfully destroyed"
  end
end
