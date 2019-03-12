require "application_system_test_case"

class ProviderSpecialtiesTest < ApplicationSystemTestCase
  setup do
    @provider_specialty = provider_specialties(:one)
  end

  test "visiting the index" do
    visit provider_specialties_url
    assert_selector "h1", text: "Provider Specialties"
  end

  test "creating a Provider specialty" do
    visit provider_specialties_url
    click_on "New Provider Specialty"

    fill_in "Active", with: @provider_specialty.active
    fill_in "Provider specialty", with: @provider_specialty.provider_specialty
    click_on "Create Provider specialty"

    assert_text "Provider specialty was successfully created"
    click_on "Back"
  end

  test "updating a Provider specialty" do
    visit provider_specialties_url
    click_on "Edit", match: :first

    fill_in "Active", with: @provider_specialty.active
    fill_in "Provider specialty", with: @provider_specialty.provider_specialty
    click_on "Update Provider specialty"

    assert_text "Provider specialty was successfully updated"
    click_on "Back"
  end

  test "destroying a Provider specialty" do
    visit provider_specialties_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Provider specialty was successfully destroyed"
  end
end
