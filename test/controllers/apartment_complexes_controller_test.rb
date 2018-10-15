require 'test_helper'

class ApartmentComplexesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @apartment_complex = apartment_complexes(:one)
  end

  test "should get index" do
    get apartment_complexes_url
    assert_response :success
  end

  test "should get new" do
    get new_apartment_complex_url
    assert_response :success
  end

  test "should create apartment_complex" do
    assert_difference('ApartmentComplex.count') do
      post apartment_complexes_url, params: { apartment_complex: { address: @apartment_complex.address, apartment_complex_name: @apartment_complex.apartment_complex_name, location_id: @apartment_complex.location_id, tenant_id: @apartment_complex.tenant_id } }
    end

    assert_redirected_to apartment_complex_url(ApartmentComplex.last)
  end

  test "should show apartment_complex" do
    get apartment_complex_url(@apartment_complex)
    assert_response :success
  end

  test "should get edit" do
    get edit_apartment_complex_url(@apartment_complex)
    assert_response :success
  end

  test "should update apartment_complex" do
    patch apartment_complex_url(@apartment_complex), params: { apartment_complex: { address: @apartment_complex.address, apartment_complex_name: @apartment_complex.apartment_complex_name, location_id: @apartment_complex.location_id, tenant_id: @apartment_complex.tenant_id } }
    assert_redirected_to apartment_complex_url(@apartment_complex)
  end

  test "should destroy apartment_complex" do
    assert_difference('ApartmentComplex.count', -1) do
      delete apartment_complex_url(@apartment_complex)
    end

    assert_redirected_to apartment_complexes_url
  end
end
