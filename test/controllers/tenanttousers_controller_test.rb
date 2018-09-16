require 'test_helper'

class TenanttousersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tenanttouser = tenanttousers(:one)
  end

  test "should get index" do
    get tenanttousers_url
    assert_response :success
  end

  test "should get new" do
    get new_tenanttouser_url
    assert_response :success
  end

  test "should create tenanttouser" do
    assert_difference('Tenanttouser.count') do
      post tenanttousers_url, params: { tenanttouser: { tenantID: @tenanttouser.tenantID, userID: @tenanttouser.userID } }
    end

    assert_redirected_to tenanttouser_url(Tenanttouser.last)
  end

  test "should show tenanttouser" do
    get tenanttouser_url(@tenanttouser)
    assert_response :success
  end

  test "should get edit" do
    get edit_tenanttouser_url(@tenanttouser)
    assert_response :success
  end

  test "should update tenanttouser" do
    patch tenanttouser_url(@tenanttouser), params: { tenanttouser: { tenantID: @tenanttouser.tenantID, userID: @tenanttouser.userID } }
    assert_redirected_to tenanttouser_url(@tenanttouser)
  end

  test "should destroy tenanttouser" do
    assert_difference('Tenanttouser.count', -1) do
      delete tenanttouser_url(@tenanttouser)
    end

    assert_redirected_to tenanttousers_url
  end
end
