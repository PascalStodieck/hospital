require "test_helper"

class PatientsControllerTest < ActionDispatch::IntegrationTest
  test "should get first_name:string" do
    get patients_first_name:string_url
    assert_response :success
  end

  test "should get last_name:string" do
    get patients_last_name:string_url
    assert_response :success
  end

  test "should get insurance:string" do
    get patients_insurance:string_url
    assert_response :success
  end

  test "should get cured:boolean" do
    get patients_cured:boolean_url
    assert_response :success
  end
end
