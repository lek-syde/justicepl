require 'test_helper'

class LawyerProfilesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @lawyer_profile = lawyer_profiles(:one)
  end

  test "should get index" do
    get lawyer_profiles_url
    assert_response :success
  end

  test "should get new" do
    get new_lawyer_profile_url
    assert_response :success
  end

  test "should create lawyer_profile" do
    assert_difference('LawyerProfile.count') do
      post lawyer_profiles_url, params: { lawyer_profile: { prefix: @lawyer_profile.prefix } }
    end

    assert_redirected_to lawyer_profile_url(LawyerProfile.last)
  end

  test "should show lawyer_profile" do
    get lawyer_profile_url(@lawyer_profile)
    assert_response :success
  end

  test "should get edit" do
    get edit_lawyer_profile_url(@lawyer_profile)
    assert_response :success
  end

  test "should update lawyer_profile" do
    patch lawyer_profile_url(@lawyer_profile), params: { lawyer_profile: { prefix: @lawyer_profile.prefix } }
    assert_redirected_to lawyer_profile_url(@lawyer_profile)
  end

  test "should destroy lawyer_profile" do
    assert_difference('LawyerProfile.count', -1) do
      delete lawyer_profile_url(@lawyer_profile)
    end

    assert_redirected_to lawyer_profiles_url
  end
end
