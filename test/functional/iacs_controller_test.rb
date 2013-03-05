require 'test_helper'

class IacsControllerTest < ActionController::TestCase
  setup do
    @iac = iacs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:iacs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create iac" do
    assert_difference('Iac.count') do
      post :create, iac: { address: @iac.address, identity: @iac.identity, identity_type: @iac.identity_type, status: @iac.status }
    end

    assert_redirected_to iac_path(assigns(:iac))
  end

  test "should show iac" do
    get :show, id: @iac
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @iac
    assert_response :success
  end

  test "should update iac" do
    put :update, id: @iac, iac: { address: @iac.address, identity: @iac.identity, identity_type: @iac.identity_type, status: @iac.status }
    assert_redirected_to iac_path(assigns(:iac))
  end

  test "should destroy iac" do
    assert_difference('Iac.count', -1) do
      delete :destroy, id: @iac
    end

    assert_redirected_to iacs_path
  end

  test "should get getAddress" do
    get :getAddress
    assert_response :success
  end
end
