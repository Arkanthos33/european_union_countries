require "application_system_test_case"

class CountryinformationsTest < ApplicationSystemTestCase
  setup do
    @countryinformation = countryinformations(:one)
  end

  test "visiting the index" do
    visit countryinformations_url
    assert_selector "h1", text: "Countryinformations"
  end

  test "creating a Countryinformation" do
    visit countryinformations_url
    click_on "New Countryinformation"

    fill_in "Capital", with: @countryinformation.capital
    check "Espaceschengen" if @countryinformation.espaceschengen
    fill_in "Flag", with: @countryinformation.flag
    fill_in "Formeetat", with: @countryinformation.formeetat
    fill_in "Langueoficiel", with: @countryinformation.langueoficiel
    fill_in "Name", with: @countryinformation.name
    fill_in "Population", with: @countryinformation.population
    check "Zoneeuro" if @countryinformation.zoneeuro
    click_on "Create Countryinformation"

    assert_text "Countryinformation was successfully created"
    click_on "Back"
  end

  test "updating a Countryinformation" do
    visit countryinformations_url
    click_on "Edit", match: :first

    fill_in "Capital", with: @countryinformation.capital
    check "Espaceschengen" if @countryinformation.espaceschengen
    fill_in "Flag", with: @countryinformation.flag
    fill_in "Formeetat", with: @countryinformation.formeetat
    fill_in "Langueoficiel", with: @countryinformation.langueoficiel
    fill_in "Name", with: @countryinformation.name
    fill_in "Population", with: @countryinformation.population
    check "Zoneeuro" if @countryinformation.zoneeuro
    click_on "Update Countryinformation"

    assert_text "Countryinformation was successfully updated"
    click_on "Back"
  end

  test "destroying a Countryinformation" do
    visit countryinformations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Countryinformation was successfully destroyed"
  end
end
