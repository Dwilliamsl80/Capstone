require 'test_helper'

class RentertousersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @rentertouser = rentertousers(:one)
  end

  test "should get index" do
    get rentertousers_url
    assert_response :success
  end

  test "should get new" do
    get new_rentertouser_url
    assert_response :success
  end

  test "should create rentertouser" do
    assert_difference('Rentertouser.count') do
      post rentertousers_url, params: { rentertouser: { renterID: @rentertouser.renterID, userID: @rentertouser.userID } }
    end

    assert_redirected_to rentertouser_url(Rentertouser.last)
  end

  test "should show rentertouser" do
    get rentertouser_url(@rentertouser)
    assert_response :success
  end

  test "should get edit" do
    get edit_rentertouser_url(@rentertouser)
    assert_response :success
  end

  test "should update rentertouser" do
    patch rentertouser_url(@rentertouser), params: { rentertouser: { renterID: @rentertouser.renterID, userID: @rentertouser.userID } }
    assert_redirected_to rentertouser_url(@rentertouser)
  end

  test "should destroy rentertouser" do
    assert_difference('Rentertouser.count', -1) do
      delete rentertouser_url(@rentertouser)
    end

    assert_redirected_to rentertousers_url
  end
end
