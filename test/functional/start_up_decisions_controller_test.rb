require 'test_helper'

class StartUpDecisionsControllerTest < ActionController::TestCase
  setup do
    @start_up_decision = start_up_decisions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:start_up_decisions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create start_up_decision" do
    assert_difference('StartUpDecision.count') do
      post :create, start_up_decision: @start_up_decision.attributes
    end

    assert_redirected_to start_up_decision_path(assigns(:start_up_decision))
  end

  test "should show start_up_decision" do
    get :show, id: @start_up_decision.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @start_up_decision.to_param
    assert_response :success
  end

  test "should update start_up_decision" do
    put :update, id: @start_up_decision.to_param, start_up_decision: @start_up_decision.attributes
    assert_redirected_to start_up_decision_path(assigns(:start_up_decision))
  end

  test "should destroy start_up_decision" do
    assert_difference('StartUpDecision.count', -1) do
      delete :destroy, id: @start_up_decision.to_param
    end

    assert_redirected_to start_up_decisions_path
  end
end
