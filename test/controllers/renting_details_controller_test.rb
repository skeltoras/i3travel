require 'test_helper'

class RentingDetailsControllerTest < ActionController::TestCase
  setup do
    @renting_detail = renting_details(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:renting_details)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create renting_detail" do
    assert_difference('RentingDetail.count') do
      post :create, renting_detail: { longdescription: @renting_detail.longdescription, shortdescription: @renting_detail.shortdescription }
    end

    assert_redirected_to renting_detail_path(assigns(:renting_detail))
  end

  test "should show renting_detail" do
    get :show, id: @renting_detail
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @renting_detail
    assert_response :success
  end

  test "should update renting_detail" do
    patch :update, id: @renting_detail, renting_detail: { longdescription: @renting_detail.longdescription, shortdescription: @renting_detail.shortdescription }
    assert_redirected_to renting_detail_path(assigns(:renting_detail))
  end

  test "should destroy renting_detail" do
    assert_difference('RentingDetail.count', -1) do
      delete :destroy, id: @renting_detail
    end

    assert_redirected_to renting_details_path
  end
end
