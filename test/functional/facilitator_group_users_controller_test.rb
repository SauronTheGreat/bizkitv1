require 'test_helper'

class FacilitatorGroupUsersControllerTest < ActionController::TestCase
  setup do
    @facilitator_group_user = facilitator_group_users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:facilitator_group_users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create facilitator_group_user" do
    assert_difference('FacilitatorGroupUser.count') do
      post :create, facilitator_group_user: @facilitator_group_user.attributes
    end

    assert_redirected_to facilitator_group_user_path(assigns(:facilitator_group_user))
  end

  test "should show facilitator_group_user" do
    get :show, id: @facilitator_group_user.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @facilitator_group_user.to_param
    assert_response :success
  end

  test "should update facilitator_group_user" do
    put :update, id: @facilitator_group_user.to_param, facilitator_group_user: @facilitator_group_user.attributes
    assert_redirected_to facilitator_group_user_path(assigns(:facilitator_group_user))
  end

  test "should destroy facilitator_group_user" do
    assert_difference('FacilitatorGroupUser.count', -1) do
      delete :destroy, id: @facilitator_group_user.to_param
    end

    assert_redirected_to facilitator_group_users_path
  end
end
