require "test_helper"

class CountryinformationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @countryinformation = countryinformations(:one)
  end

  test "should get index" do
    get countryinformations_url
    assert_response :success
  end

  test "should get new" do
    get new_countryinformation_url
    assert_response :success
  end

  test "should create countryinformation" do
    assert_difference('Countryinformation.count') do
      post countryinformations_url, params: { countryinformation: { capital: @countryinformation.capital, espaceschengen: @countryinformation.espaceschengen, flag: @countryinformation.flag, formeetat: @countryinformation.formeetat, langueoficiel: @countryinformation.langueoficiel, name: @countryinformation.name, population: @countryinformation.population, zoneeuro: @countryinformation.zoneeuro } }
    end

    assert_redirected_to countryinformation_url(Countryinformation.last)
  end

  test "should show countryinformation" do
    get countryinformation_url(@countryinformation)
    assert_response :success
  end

  test "should get edit" do
    get edit_countryinformation_url(@countryinformation)
    assert_response :success
  end

  test "should update countryinformation" do
    patch countryinformation_url(@countryinformation), params: { countryinformation: { capital: @countryinformation.capital, espaceschengen: @countryinformation.espaceschengen, flag: @countryinformation.flag, formeetat: @countryinformation.formeetat, langueoficiel: @countryinformation.langueoficiel, name: @countryinformation.name, population: @countryinformation.population, zoneeuro: @countryinformation.zoneeuro } }
    assert_redirected_to countryinformation_url(@countryinformation)
  end

  test "should destroy countryinformation" do
    assert_difference('Countryinformation.count', -1) do
      delete countryinformation_url(@countryinformation)
    end

    assert_redirected_to countryinformations_url
  end
end
