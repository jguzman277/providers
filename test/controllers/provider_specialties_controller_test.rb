require 'test_helper'

class ProviderSpecialtiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @provider_specialty = provider_specialties(:one)
  end

  test "should get index" do
    get provider_specialties_url
    assert_response :success
  end

  test "should get new" do
    get new_provider_specialty_url
    assert_response :success
  end

  test "should create provider_specialty" do
    assert_difference('ProviderSpecialty.count') do
      post provider_specialties_url, params: { provider_specialty: { active: @provider_specialty.active, provider_specialty: @provider_specialty.provider_specialty } }
    end

    assert_redirected_to provider_specialty_url(ProviderSpecialty.last)
  end

  test "should show provider_specialty" do
    get provider_specialty_url(@provider_specialty)
    assert_response :success
  end

  test "should get edit" do
    get edit_provider_specialty_url(@provider_specialty)
    assert_response :success
  end

  test "should update provider_specialty" do
    patch provider_specialty_url(@provider_specialty), params: { provider_specialty: { active: @provider_specialty.active, provider_specialty: @provider_specialty.provider_specialty } }
    assert_redirected_to provider_specialty_url(@provider_specialty)
  end

  test "should destroy provider_specialty" do
    assert_difference('ProviderSpecialty.count', -1) do
      delete provider_specialty_url(@provider_specialty)
    end

    assert_redirected_to provider_specialties_url
  end
end
